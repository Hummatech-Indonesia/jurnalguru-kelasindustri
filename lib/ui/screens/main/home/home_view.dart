import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utilities/extensions.dart';
import '../../../providers/journal/journals_provider.dart';
import '../../../theme/theme_constants.dart';
import '../../../widgets/journal_list_item.dart';
import '../../../widgets/section_title.dart';
import '../../../widgets/ui_card.dart';
import '../main_screen.dart';
import '../widgets/custom_navigation_bar.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        _buildHeader(context),
        Expanded(child: _buildBody(context, ref)),
      ],
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 32,
                ),
                8.widthBox,
                Column(
                  children: [
                    Text("Nathasya",
                        style: context.text.titleMedium
                            ?.weight(Weight.bold)
                            .onPrimaryColor()),
                    8.heightBox,
                    Container(
                      decoration: BoxDecoration(
                        color: context.color.surface,
                        borderRadius: ThemeConstants.smallRadius,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 2),
                      child: const Text("Guru"),
                    )
                  ],
                ),
                const Spacer(),
                IconButton.filled(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                    backgroundColor: context.color.surface,
                    foregroundColor: context.color.primary,
                    padding: const EdgeInsets.all(12),
                  ),
                  icon: const Icon(
                    Icons.settings,
                    size: 38,
                  ),
                ),
              ],
            ),
            14.heightBox,
            Text(
              DateTime.now().asDate,
              style: context.text.bodyMedium?.onPrimaryColor(),
            ),
            8.heightBox,
            Text(
              "Selamat Datang, Nathasya",
              style:
                  context.text.titleLarge?.weight(Weight.bold).onPrimaryColor(),
            )
          ],
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
      child: SingleChildScrollView(
        padding: ThemeConstants.defaultPadding +
            const EdgeInsets.only(bottom: CustomNavigationBar.height),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SectionTitle(title: "Statistik"),
            16.heightBox,
            _buildStatistic(context),
            24.heightBox,
            SectionTitle(
              title: "Jurnal Harian",
              more: "Lihat Semua",
              onMorePressed: () {
                ref.read(MainScreen.pageController).animateToPage(
                      0,
                      duration: ThemeConstants.navigationBarAnimationDuration,
                      curve: ThemeConstants.navigationBarAnimationCurve,
                    );
              },
            ),
            24.heightBox,
            _buildJournalList(context),
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
          _buildStatisticItem(context, "03", "Kelas", Colors.red),
          8.widthBox,
          _buildStatisticItem(context, "03", "Jurnal", Colors.green),
          8.widthBox,
          _buildStatisticItem(context, "03", "Notifikasi", Colors.blue),
        ],
      ),
    );
  }

  Widget _buildStatisticItem(
    BuildContext context,
    String value,
    String label,
    Color color,
  ) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: color.withOpacity(0.25),
            borderRadius: ThemeConstants.smallRadius,
          ),
          padding: ThemeConstants.defaultPadding / 2,
          child: Text(
            value,
            style: context.text.headlineLarge
                ?.weight(Weight.semiBold)
                .withColor(color),
          ),
        ),
        10.heightBox,
        Text(
          label,
          style: context.text.bodyMedium,
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
            data: (journals) {
              journals = journals.take(5).toList();

              return ListView.separated(
                itemCount: journals.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return JournalListItem(
                    journal: journals[index],
                  );
                },
                separatorBuilder: (context, index) => 12.heightBox,
              );
            },
            error: (failure, stackTrace) => Text(failure.toString()),
            loading: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
