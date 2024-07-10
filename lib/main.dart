import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_management_app/navigation/route_manager.dart';
import 'package:user_management_app/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: AppColors.whiteColor,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RouteManager.splashScreen,
      getPages: RouteManager.getPages(),
    );
  }
}
