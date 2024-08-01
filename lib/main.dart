import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'domain/services/alice_provider.dart';
import 'ui/routes/routes.dart';
import 'ui/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  initializeDateFormatting('id');

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alice = ref.watch(aliceProvider);

    return MaterialApp(
      navigatorKey: alice.getNavigatorKey(),
      theme: theme,
      initialRoute: Routes.splash,
      routes: Routes.routes,
    );
  }
}
