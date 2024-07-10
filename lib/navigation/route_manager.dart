import 'package:get/get.dart';
import 'package:user_management_app/features/dashboard/dashboard_page.dart';
import 'package:user_management_app/forget_password/forget_password_page.dart';
import 'package:user_management_app/features/login/login_page.dart';
import 'package:user_management_app/features/register_feature/register_page.dart';
import 'package:user_management_app/features/splash_screen/splash_screen.dart';

class RouteManager {
  static const splashScreen = '/';
  static const loginPage = '/login_page';
  static const signUpPage = '/register_page';
  static const forgetPasswordPage ='/forget_password_page';
  static const dashboardPage = '/dashboard_page';

  static List<GetPage> getPages() {
    return [
      GetPage(
        name: splashScreen,
        page: () => const SplashScreen(),
      ),
      GetPage(
        name: loginPage,
        page: () => const LoginPage(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: forgetPasswordPage,
        page: () => const ForgetPasswordPage(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: signUpPage,
        page: () => const RegisterPage(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: dashboardPage,
        page: () => const DashboardPage(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 500),
      ),
    ];
  }
}
