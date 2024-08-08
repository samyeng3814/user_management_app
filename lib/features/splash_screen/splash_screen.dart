import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:user_management_app/constants/constant.dart';
import 'package:user_management_app/navigation/route_manager.dart';
import 'package:user_management_app/utils/app_colors.dart';
import 'package:user_management_app/utils/hive_model.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeHive();
  }

  Future<void> _initializeHive() async {
    await Hive.initFlutter();
    await Hive.openBox<UserHiveModel>('userBox');
    navigatePage();
  }

  Future<void> navigatePage() async {
    final user = await getUser();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (user != null) {
          Get.toNamed(RouteManager.dashboardPage);
        } else {
          Get.toNamed(RouteManager.loginPage);
        }
      },
    );
  }

  Future<UserHiveModel?> getUser() async {
    final userBox = Hive.box<UserHiveModel>('userBox');
    return userBox.isNotEmpty ? userBox.get('currentUser') : null;
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          color: AppColors.blackColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 54,
                child: SvgPicture.asset(
                  "assets/svg/car_icon.svg",
                  fit: BoxFit.contain,
                  colorFilter:
                      ColorFilter.mode(AppColors.whiteColor, BlendMode.srcIn),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
