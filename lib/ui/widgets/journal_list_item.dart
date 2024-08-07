import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../domain/entities/journal.dart';
import '../../utilities/extensions.dart';
import '../routes/routes.dart';
import '../screens/journal_detail/journal_detail_screen_argument.dart';
import '../theme/theme.dart';
import 'ui_card.dart';

class JournalListItem extends StatelessWidget {
  final Journal journal;

  const JournalListItem({
    super.key,
    required this.journal,
  });

  @override
  Widget build(BuildContext context) {
    return UICard(
      padding: ThemeConstants.defaultPadding / 2,
      onTap: () {
        Navigator.of(context).pushNamed(
          Routes.journalDetail,
          arguments: JournalDetailScreenArgument(journalId: journal.id!),
        );
      },
      child: Row(
        children: [
          FaIcon(
            FontAwesomeIcons.clipboardCheck,
            size: 54,
            color: context.color.primary,
          ),
          16.widthBox,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  journal.title ?? '',
                  style: context.text.titleMedium?.weight(Weight.bold),
                ),
                8.heightBox,
                Text(
                  journal.date?.asDate ?? '',
                  style: context.text.bodyMedium,
                ),
                4.heightBox,
                Text(
                  journal.classroom?.name ?? '',
                  style: context.text.bodyMedium?.withColor(
                    context.color.onSurface.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  _buildAttendance(
                    context,
                    "${journal.sicks ?? 0}",
                    "Sakit",
                    Colors.blue,
                  ),
                  8.widthBox,
                  _buildAttendance(
                      context, "${journal.absents}", "Alfa", Colors.red),
                  8.widthBox,
                  _buildAttendance(
                      context, "${journal.permits}", "Izin", Colors.yellow),
                ],
              ),
              24.heightBox,
              Text(
                "Click untuk detail",
                style: context.text.labelMedium
                    ?.withColor(context.color.onSurface.withOpacity(0.5)),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildAttendance(
    BuildContext context,
    String value,
    String label,
    Color color,
  ) {
    return Column(
      children: [
        Text(
          value,
          style:
              context.text.bodyLarge?.weight(Weight.semiBold).withColor(color),
        ),
        4.heightBox,
        Text(
          label,
          style: context.text.bodyMedium?.weight(Weight.semiBold),
        ),
      ],
    );
  }
}
