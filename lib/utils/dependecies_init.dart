import 'package:get/get.dart';
import 'package:user_management_app/features/login/controller/login_controller.dart';

class Dependencies {
  static void init() {
    Get.put(LoginController());
  }
}