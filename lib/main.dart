import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_management_app/screens/login/login_page.dart';
import 'package:user_management_app/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: '/login_page',
          page: () => const LoginPage(),
        )
      ],
      home: const SplashScreen(),
    );
  }
}
