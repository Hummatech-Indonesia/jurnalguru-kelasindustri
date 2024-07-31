import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'ui/screens/splash_screen.dart';
import 'ui/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  initializeDateFormatting('id');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const SplashScreen(),
    );
  }
}
