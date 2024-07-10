import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:user_management_app/constants/constant.dart';
import 'package:user_management_app/navigation/route_manager.dart';
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
        Get.toNamed(RouteManager.loginPage);
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
          color: AppColors.blackColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 54,
                child: SvgPicture.asset(
                  "assets/svg/car_icon.svg",
                  fit: BoxFit.contain, colorFilter: ColorFilter.mode(AppColors.whiteColor, BlendMode.srcIn),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
