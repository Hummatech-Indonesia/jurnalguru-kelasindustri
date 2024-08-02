import 'package:flutter/material.dart';

import '../../../../../utilities/extensions.dart';
import '../../../domain/entities/journal.dart';
import '../../theme/theme_constants.dart';
import '../../widgets/section_title.dart';
import '../../widgets/ui_card.dart';
import '../../widgets/ui_screen.dart';

class JournalDetailScreen extends StatefulWidget {
  final Journal journal;

  const JournalDetailScreen({
    super.key,
    required this.journal,
  });

  @override
  State<JournalDetailScreen> createState() => _JournalDetailScreenState();
}

class _JournalDetailScreenState extends State<JournalDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return UIScreen(
      body: Stack(
        children: [
          Column(
            children: [
              _buildHeader(context),
              Expanded(child: _buildBody(context)),
            ],
          ),
          Positioned(
            right: 24,
            bottom: 24,
            child: Row(
              children: [
                FloatingActionButton(
                  onPressed: () {},
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
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
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

  Widget _buildBody(BuildContext context) {
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
            _buildStatistic(context),
            16.heightBox,
            UICard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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

  Widget _buildStatistic(BuildContext context) {
    return UICard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildStatisticItem(context, widget.journal.classroom?.students ?? 0,
              "Siswa", Colors.green),
          8.widthBox,
          _buildStatisticItem(
              context, widget.journal.sicks ?? 0, "Sakit", Colors.blue),
          8.widthBox,
          _buildStatisticItem(
              context, widget.journal.absents ?? 0, "Alpa", Colors.red),
          8.widthBox,
          _buildStatisticItem(
              context, widget.journal.permits ?? 0, "Izin", Colors.yellow),
        ],
      ),
    );
  }

  Widget _buildStatisticItem(
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
