import 'package:flutter/material.dart';

import '../../utilities/extensions.dart';
import '../screens/journal_detail/journal_detail_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/main/journal/add_journal/add_journal_screen.dart';
import '../screens/main/main_screen.dart';
import '../screens/splash_screen.dart';

class Routes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String main = '/main';
  static const String journalDetail = '/journal';
  static const String addJournal = '/add-journal';

  static final routes = {
    Routes.splash: (context) => const SplashScreen(),
    Routes.login: (context) => const LoginScreen(),
    Routes.main: (context) => const MainScreen(),
    Routes.journalDetail: (context) => const JournalDetailScreen(),
    Routes.addJournal: (context) => const AddJournalScreen(),
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final routeName = settings.name;

    if (routeName != null) {
      final route = routes[routeName];

      if (route != null) {
        if (routeName == Routes.login) {
          // custom transition
          return PageRouteBuilder(
            settings: settings,
            transitionDuration: 0.3.seconds,
            pageBuilder: (context, animation, secondaryAnimation) =>
                route(context),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          );
        }

        return MaterialPageRoute(builder: route, settings: settings);
      }
    }

    return null;
  }
}
