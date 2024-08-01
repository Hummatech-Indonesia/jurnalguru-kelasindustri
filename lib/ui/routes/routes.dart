import '../screens/login/login_screen.dart';
import '../screens/main/main_screen.dart';
import '../screens/splash_screen.dart';

class Routes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String main = '/main';

  static final routes = {
    Routes.splash: (context) => const SplashScreen(),
    Routes.login: (context) => const LoginScreen(),
    Routes.main: (context) => const MainScreen(),
  };
}
