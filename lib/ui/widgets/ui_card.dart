import 'package:flutter/material.dart';

import '../../utilities/extensions.dart';
import '../theme/theme_constants.dart';

class UICard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;

  const UICard({
    super.key,
    required this.child,
    this.padding,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: ThemeConstants.smallRadius,
        boxShadow: [
          BoxShadow(
            color: context.color.onSurface.withOpacity(0.075),
            offset: const Offset(2, 4),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Material(
        color: context.color.surface,
        borderRadius: ThemeConstants.smallRadius,
        child: InkWell(
          onTap: onTap,
          borderRadius: ThemeConstants.smallRadius,
          child: Padding(
            padding: padding ?? ThemeConstants.defaultPadding,
            child: child,
          ),
        ),
      ),
    );
  }
}
