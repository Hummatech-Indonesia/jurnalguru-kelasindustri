import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utilities/extensions.dart';
import '../providers/auth/auth_notifier.dart';
import '../routes/routes.dart';

enum SplashState {
  initial,
  logged,
  notLogged,
}

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  SplashState _splashState = SplashState.initial;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(authNotifierProvider.notifier).checkLogin();
      _checkLogin();
    });
  }

  Future<void> _checkLogin() async {
    final isLoggedIn =
        ref.read(authNotifierProvider.select((state) => state.isLoggedIn));

    setState(() {
      _splashState = isLoggedIn ? SplashState.logged : SplashState.notLogged;
    });

    if (isLoggedIn) {
      await Future.delayed(100.milliseconds);

      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, Routes.main);
    } else {
      await Future.delayed(5.seconds);

      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, Routes.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (_splashState == SplashState.notLogged)
            Positioned.fill(
              child: Image.asset(
                'assets/images/splash_animation.gif',
                fit: BoxFit.cover,
              ),
            ),
          if (_splashState == SplashState.notLogged)
            Center(
              child: Image.asset('assets/images/splash_logo_animation.gif'),
            ),
          if (_splashState == SplashState.initial ||
              _splashState == SplashState.logged)
            Center(
              child: Image.asset(
                'assets/images/splash_logo.png',
                width: 200,
              ),
            ),
        ],
      ),
    );
  }
}
