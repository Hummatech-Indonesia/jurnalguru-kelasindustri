import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utilities/extensions.dart';
import '../../../providers/auth/auth_notifier.dart';
import '../../../providers/journal/journals_provider.dart';
import '../../../providers/student/students_provider.dart';
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
        _buildHeader(context, ref),
        Expanded(child: _buildBody(context, ref)),
      ],
    );
  }

  Widget _buildHeader(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authNotifierProvider.select((state) => state.user));

    return SafeArea(
      child: Padding(
        padding: ThemeConstants.defaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 32,
                  foregroundImage: NetworkImage(
                    "https://ui-avatars.com/api/?name=${user?.name ?? ""}",
                  ),
                ),
                8.widthBox,
                Column(
                  children: [
                    Text(user?.name ?? '-',
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
                  onPressed: () {
                    ref.read(MainScreen.pageController).animateToPage(
                          2,
                          duration:
                              ThemeConstants.navigationBarAnimationDuration,
                          curve: ThemeConstants.navigationBarAnimationCurve,
                        );
                  },
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
              "Selamat Datang, ${user?.name ?? '-'}",
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
      child: RefreshIndicator(
        onRefresh: () {
          ref.invalidate(studentsProvider);
          ref.invalidate(journalsProvider);

          return Future.wait([
            ref.read(studentsProvider.future),
            ref.read(journalsProvider.future),
          ]);
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
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
      ),
    );
  }

  Widget _buildStatistic(BuildContext context) {
    return UICard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildStatisticItem(context, 1, "Kelas", Colors.red),
          const Spacer(),
          Consumer(builder: (context, ref, child) {
            final journals = ref.watch(journalsProvider).value?.length ?? 0;

            return _buildStatisticItem(
                context, journals, "Jurnal", Colors.green);
          }),
          const Spacer(),
          Consumer(builder: (context, ref, child) {
            final students = ref.watch(
              studentsProvider.select((value) => value.value?.length ?? 0),
            );

            return _buildStatisticItem(context, students, "Siswa", Colors.blue);
          }),
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
          Container(
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
          10.heightBox,
          Text(
            label,
            style: context.text.bodyMedium,
          ),
        ],
      ),
    );
  }

  Widget _buildJournalList(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Consumer(
        builder: (context, ref, child) {
          final journals = ref.watch(journalsProvider);

          return journals.display(
            (journals) {
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
          );
        },
      ),
    );
  }
}
