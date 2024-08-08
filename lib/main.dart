import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:user_management_app/navigation/route_manager.dart';
import 'package:user_management_app/utils/app_colors.dart';
import 'package:user_management_app/utils/dependecies_init.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Dependencies.init();
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
