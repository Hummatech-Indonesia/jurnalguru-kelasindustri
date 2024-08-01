import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../notifiers/auth/auth_notifier.dart';
import '../routes/routes.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();

    ref.read(authNotifierProvider.notifier).checkLogin();

    Future.delayed(const Duration(seconds: 2), _checkLogin);
  }

  Future<void> _checkLogin() async {
    final isLoggedIn =
        ref.read(authNotifierProvider.select((state) => state.isLoggedIn));

    if (isLoggedIn) {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, Routes.main);
    } else {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, Routes.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}
