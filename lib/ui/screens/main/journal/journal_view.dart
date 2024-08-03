import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utilities/extensions.dart';
import '../../../providers/journal/journals_provider.dart';
import '../../../theme/theme.dart';
import '../../../theme/theme_constants.dart';
import '../../../widgets/journal_list_item.dart';
import '../widgets/custom_navigation_bar.dart';
import 'add_journal/add_journal_screen.dart';

class JournalView extends ConsumerWidget {
  const JournalView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Column(
          children: [
            _buildHeader(context),
            Expanded(child: _buildBody(context, ref)),
          ],
        ),
        Positioned(
          right: 24,
          bottom: 24 + CustomNavigationBar.heightWithoutTip,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AddJournalScreen(),
                ),
              );
            },
            shape: const CircleBorder(),
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: ThemeConstants.defaultPadding,
        child: Center(
          child: Text(
            "Kelas Industri",
            style:
                context.text.titleLarge?.weight(Weight.bold).onPrimaryColor(),
          ),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: context.color.surface,
        borderRadius: BorderRadius.only(
          topLeft: ThemeConstants.largeRadius.topLeft,
          topRight: ThemeConstants.largeRadius.topRight,
        ),
      ),
      child: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(journalsProvider);

          return ref.read(journalsProvider.future);
        },
        child: SingleChildScrollView(
          padding: ThemeConstants.defaultPadding +
              const EdgeInsets.only(bottom: CustomNavigationBar.height),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildSectionTitle(context, "Jurnal Harian"),
              24.heightBox,
              _buildJournalList(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title,
      [String? more]) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: context.color.primary,
                width: 4,
              ),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: Text(
            title,
            style: context.text.titleLarge?.weight(Weight.bold),
          ),
        ),
        const Spacer(),
        if (more != null)
          TextButton(
            onPressed: () {},
            child: Text(more),
          ),
      ],
    );
  }

  Widget _buildJournalList(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Consumer(
        builder: (context, ref, child) {
          final journals = ref.watch(journalsProvider);

          return journals.when(
            data: (journals) => ListView.separated(
              itemCount: journals.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              // padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return JournalListItem(
                  journal: journals[index],
                );
              },
              separatorBuilder: (context, index) => 12.heightBox,
            ),
            error: (failure, stackTrace) => Text(failure.toString()),
            loading: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
