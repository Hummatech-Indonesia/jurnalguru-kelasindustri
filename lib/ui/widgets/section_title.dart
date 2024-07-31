import 'package:flutter/material.dart';

import '../../utilities/extensions.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String? more;

  const SectionTitle({
    super.key,
    required this.title,
    this.more,
  });

  @override
  Widget build(BuildContext context) {
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
            child: Text(more!),
          ),
      ],
    );
  }
}
