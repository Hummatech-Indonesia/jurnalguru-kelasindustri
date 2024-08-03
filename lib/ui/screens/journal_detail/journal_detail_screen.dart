import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../utilities/extensions.dart';
import '../../../domain/entities/failure/failure.dart';
import '../../../domain/entities/journal.dart';
import '../../providers/journal/journals_provider.dart';
import '../../theme/theme_constants.dart';
import '../../widgets/section_title.dart';
import '../../widgets/ui_card.dart';
import '../../widgets/ui_screen.dart';
import 'widgets/delete_journal_modal.dart';

class JournalDetailScreen extends ConsumerStatefulWidget {
  final Journal journal;

  const JournalDetailScreen({
    super.key,
    required this.journal,
  });

  @override
  ConsumerState<JournalDetailScreen> createState() =>
      _JournalDetailScreenState();
}

class _JournalDetailScreenState extends ConsumerState<JournalDetailScreen> {
  bool _isLoading = false;

  Future<void> _deleteJournal() async {
    final confirmed = await DeleteJournalModal.show(context);
    if (confirmed ?? false) {
      setState(() => _isLoading = true);

      try {
        await ref.read(journalsProvider.notifier).delete(widget.journal);

        if (mounted) {
          Navigator.of(context).pop();
        }
      } on Failure catch (e) {
        if (mounted) {
          e.snackbar(context);
        }
      } finally {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return UIScreen(
      body: Stack(
        children: [
          Column(
            children: [
              buildHeader(context),
              Expanded(child: buildBody(context)),
            ],
          ),
          Positioned(
            right: 24,
            bottom: 24,
            child: Row(
              children: [
                FloatingActionButton(
                  onPressed: _deleteJournal,
                  heroTag: "delete",
                  backgroundColor: context.color.error,
                  child: const Icon(Icons.delete),
                ),
                8.widthBox,
                FloatingActionButton(
                  onPressed: () {},
                  heroTag: "edit",
                  backgroundColor: Colors.yellow.shade800,
                  child: const Icon(Icons.edit_square),
                ),
              ],
            ),
          ),
          if (_isLoading)
            AbsorbPointer(
              absorbing: true,
              child: Container(
                color: Colors.black.withOpacity(0.1),
                alignment: Alignment.center,
                child: const CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: ThemeConstants.defaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton.filled(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: IconButton.styleFrom(
                        backgroundColor: context.color.surface,
                        foregroundColor: context.color.onSurface,
                      ),
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      "Kelas Industri",
                      style: context.text.titleLarge
                          ?.weight(Weight.bold)
                          .onPrimaryColor(),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
            24.heightBox,
            Text(
              widget.journal.classroom?.name ?? '',
              style: context.text.bodyMedium?.onPrimaryColor(),
            ),
            4.heightBox,
            Text(
              widget.journal.title ?? '',
              style: context.text.titleLarge
                  ?.weight(Weight.semiBold)
                  .onPrimaryColor(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.color.surface,
        borderRadius: BorderRadius.only(
          topLeft: ThemeConstants.largeRadius.topLeft,
          topRight: ThemeConstants.largeRadius.topRight,
        ),
      ),
      child: SingleChildScrollView(
        padding: ThemeConstants.defaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SectionTitle(title: "Statistik"),
            16.heightBox,
            buildStatistic(context),
            16.heightBox,
            UICard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.journal.photo != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: ClipRRect(
                        borderRadius: ThemeConstants.mediumRadius,
                        child: Image.network(
                          "https://classhummatech.mijurnal.com/storage/${widget.journal.photo!}",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  Text(
                    widget.journal.title ?? '',
                    style: context.text.titleLarge?.weight(Weight.semiBold),
                  ),
                  8.heightBox,
                  Text(widget.journal.date?.asDate ?? ''),
                  4.heightBox,
                  Text(widget.journal.classroom?.name ?? ''),
                  12.heightBox,
                  Text(
                    "Deskripsi",
                    style: context.text.titleLarge?.weight(Weight.semiBold),
                  ),
                  4.heightBox,
                  Text(widget.journal.description ?? ''),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStatistic(BuildContext context) {
    return UICard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildStatisticItem(context, widget.journal.classroom?.students ?? 0,
              "Siswa", Colors.green),
          8.widthBox,
          buildStatisticItem(
              context, widget.journal.sicks ?? 0, "Sakit", Colors.blue),
          8.widthBox,
          buildStatisticItem(
              context, widget.journal.absents ?? 0, "Alpa", Colors.red),
          8.widthBox,
          buildStatisticItem(
              context, widget.journal.permits ?? 0, "Izin", Colors.yellow),
        ],
      ),
    );
  }

  Widget buildStatisticItem(
    BuildContext context,
    num value,
    String label,
    Color color,
  ) {
    return Expanded(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: color.withOpacity(0.25),
                borderRadius: ThemeConstants.smallRadius,
              ),
              padding: ThemeConstants.defaultPadding / 2,
              alignment: Alignment.center,
              child: Text(
                value.toString(),
                style: context.text.headlineLarge
                    ?.weight(Weight.semiBold)
                    .withColor(color),
              ),
            ),
          ),
          10.heightBox,
          Text(
            label,
            style: context.text.bodyMedium,
          ),
        ],
      ),
    );
  }
}
