import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_management_app/constants/constant.dart';
import 'package:user_management_app/utils/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigatePage();
    super.initState();
  }

  navigatePage() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.toNamed('/login_page');
      },
    );
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
          color: AppColors.primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 54,
                child: Image.asset(
                  "assets/svg/car_icon.png",
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
