import 'package:get/get.dart';
import 'package:user_management_app/features/customer_feature/add_customer_page.dart';
import 'package:user_management_app/features/customer_feature/customer_detail_page.dart';
import 'package:user_management_app/features/customer_feature/customer_list_page.dart';
import 'package:user_management_app/features/dashboard/dashboard_page.dart';
import 'package:user_management_app/features/forget_password/forget_password_page.dart';
import 'package:user_management_app/features/login/view/login_page.dart';
import 'package:user_management_app/features/register_feature/register_page.dart';
import 'package:user_management_app/features/splash_screen/splash_screen.dart';

class RouteManager {
  static const splashScreen = '/';
  static const loginPage = '/login_page';
  static const signUpPage = '/register_page';
  static const forgetPasswordPage ='/forget_password_page';
  static const dashboardPage = '/dashboard_page';
  static const customerListPage = '/customer_list_page';
  static const customerDetailPage = '/customer_detail_page';
  static const addCustomerPage = '/add_customer_page';

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
      GetPage(
        name: customerListPage,
        page: () => const CustomerListPage(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: customerDetailPage,
        page: () => const CustomerDetailPage(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 500),
      ),
      GetPage(
        name: addCustomerPage,
        page: () => const AddCustomerPage(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 500),
      ),
    ];
  }
}
