import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utilities/extensions.dart';
import '../../../theme/theme_constants.dart';

class CustomNavigationItem {
  final String title;
  final IconData icon;

  const CustomNavigationItem({
    required this.title,
    required this.icon,
  });
}

class CustomNavigationBar extends StatefulWidget {
  final List<CustomNavigationItem> items;
  final Function(int index)? onTap;
  final int currentIndex;

  static const double heightWithoutTip = 80;
  static const double height = heightWithoutTip + 16;

  const CustomNavigationBar({
    required this.items,
    required this.currentIndex,
    this.onTap,
    super.key,
  });

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  late int _currentIndex = widget.currentIndex;

  @override
  void didUpdateWidget(covariant CustomNavigationBar oldWidget) {
    _currentIndex = widget.currentIndex;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final circleRadius = context.width / widget.items.length / 2;
    final circleOffset = _currentIndex * circleRadius * 2;

    final containerShadow = [
      BoxShadow(
        color: context.color.onSurface.withOpacity(0.2),
        blurRadius: 8,
      )
    ];

    return Stack(
      clipBehavior: Clip.none,
      children: [
        AnimatedPositioned(
          duration: ThemeConstants.navigationBarAnimationDuration,
          curve: ThemeConstants.navigationBarAnimationCurve,
          top: -circleRadius / 3,
          left: circleOffset + circleRadius / 2,
          child: Container(
            width: circleRadius,
            height: circleRadius,
            decoration: BoxDecoration(
              boxShadow: containerShadow,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Container(
          height: CustomNavigationBar.heightWithoutTip,
          decoration: BoxDecoration(
            color: context.color.surface,
            borderRadius: BorderRadius.only(
              topLeft: ThemeConstants.smallRadius.topLeft,
              topRight: ThemeConstants.smallRadius.topRight,
            ),
            boxShadow: containerShadow,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (final (index, _) in widget.items.indexed)
                    Expanded(
                      child: Material(
                        type: MaterialType.transparency,
                        child: InkWell(
                          customBorder: const CircleBorder(),
                          onTap: () {
                            if (widget.onTap != null) {
                              widget.onTap!(index);
                            }
                          },
                          child: const Center(),
                        ),
                      ),
                    ),
                ],
              ),
              AnimatedPositioned(
                duration: ThemeConstants.navigationBarAnimationDuration,
                curve: ThemeConstants.navigationBarAnimationCurve,
                top: -circleRadius / 3,
                left: circleOffset + circleRadius / 2,
                child: Container(
                  width: circleRadius,
                  height: circleRadius,
                  decoration: BoxDecoration(
                    color: context.color.surface,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(6),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: context.color.primary,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: context.color.primary.withOpacity(0.5),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              IgnorePointer(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (final item in widget.items)
                      Expanded(
                        child: Stack(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: TweenAnimationBuilder<double>(
                                tween: Tween<double>(
                                    begin: 0,
                                    end: _currentIndex ==
                                            widget.items.indexOf(item)
                                        ? 1
                                        : 0),
                                duration: ThemeConstants
                                    .navigationBarAnimationDuration,
                                curve:
                                    ThemeConstants.navigationBarAnimationCurve,
                                builder: (context, value, child) {
                                  return Transform.translate(
                                    offset: Offset(
                                      0,
                                      value * -circleRadius / 2.3,
                                    ),
                                    child: FaIcon(
                                      item.icon,
                                      size: lerpDouble(circleRadius * 0.35,
                                          circleRadius * 0.38, value),
                                      color: Color.lerp(
                                        context.color.onSurface
                                            .withOpacity(0.2),
                                        context.color.onPrimary,
                                        value,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Positioned(
                              bottom: 12,
                              left: 0,
                              right: 0,
                              child: AnimatedOpacity(
                                duration: ThemeConstants
                                    .navigationBarAnimationDuration,
                                curve:
                                    ThemeConstants.navigationBarAnimationCurve,
                                opacity:
                                    _currentIndex == widget.items.indexOf(item)
                                        ? 1
                                        : 0,
                                child: Text(
                                  item.title,
                                  style: context.text.bodyMedium
                                      ?.weight(Weight.bold)
                                      .primaryColor(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
