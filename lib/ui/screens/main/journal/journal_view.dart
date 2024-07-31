import 'package:flutter/material.dart';

import '../../../../utilities/extensions.dart';
import '../../../theme/theme.dart';
import '../../../theme/theme_constants.dart';
import '../../../widgets/journal_list_item.dart';
import '../widgets/custom_navigation_bar.dart';
import 'add_journal/add_journal_screen.dart';

class JournalView extends StatelessWidget {
  const JournalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            _buildHeader(context),
            Expanded(child: _buildBody(context)),
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
      child: ListView.separated(
        itemCount: 3,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        // padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const JournalListItem();
        },
        separatorBuilder: (context, index) => 12.heightBox,
      ),
    );
  }
}
