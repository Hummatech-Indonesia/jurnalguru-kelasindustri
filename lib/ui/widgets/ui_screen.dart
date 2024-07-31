import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utilities/extensions.dart';

class UIScreen extends StatelessWidget {
  final Widget body;
  final Widget? drawer;
  final Color? backgroundColor;
  final Widget? appBar;
  final bool? resizeToAvoidBottomInset;
  final Widget? floatingActionButton;
  final bool safeArea;
  final bool lightStatusBar;

  const UIScreen({
    super.key,
    required this.body,
    this.drawer,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.appBar,
    this.floatingActionButton,
    this.safeArea = false,
    this.lightStatusBar = false,
  });

  @override
  Widget build(BuildContext context) {
    final bodyContent = Stack(
      children: [
        Positioned(
          top: 0,
          right: 0,
          height: MediaQuery.of(context).size.height * 0.75,
          child: Image.asset(
            "assets/images/decoration.png",
            fit: BoxFit.contain,
          ),
        ),
        Column(
          children: [
            if (appBar != null) appBar!,
            Expanded(child: body),
          ],
        ),
      ],
    );

    return GestureDetector(
      onTap: () {
        final FocusScopeNode currentScope = FocusScope.of(context);
        if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness:
              lightStatusBar ? Brightness.light : Brightness.dark,
          statusBarBrightness:
              lightStatusBar ? Brightness.light : Brightness.dark,
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          backgroundColor: backgroundColor ?? context.color.secondary,
          drawer: drawer,
          body: safeArea ? SafeArea(child: bodyContent) : bodyContent,
          floatingActionButton: floatingActionButton,
        ),
      ),
    );
  }
}
