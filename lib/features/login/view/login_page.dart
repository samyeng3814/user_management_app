import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_management_app/constants/constant.dart';
import 'package:user_management_app/features/login/controller/login_controller.dart';
import 'package:user_management_app/features/login/model/login_model.dart';
import 'package:user_management_app/navigation/route_manager.dart';
import 'package:user_management_app/theme/themes.dart';
import 'package:user_management_app/utils/app_colors.dart';
import 'package:user_management_app/utils/app_sized_box.dart';
import 'package:user_management_app/utils/common_text_field.dart';
import 'package:user_management_app/utils/elevated_button.dart';
import 'package:user_management_app/utils/validation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final FocusNode mailIdFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  bool passwordVisibility = true;

  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                child: SingleChildScrollView(
                  child: Container(
                    width: screenWidth - (screenWidth * 0.12),
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: const Alignment(0.8, -0.37),
                        end: const Alignment(-0.8, 0.37),
                        colors: [
                          Colors.white.withOpacity(0.6),
                          Colors.white.withOpacity(0.7),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 800),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Login",
                              style: AppTheme.of(context).title,
                            ),
                            SizedBox(
                              height: screenHeight * 0.04,
                            ),
                            Form(
                              key: _formKey,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Email ID",
                                          style: AppTheme.of(context).bodyText,
                                        ),
                                        AppSizedBox.h8,
                                        CustomTextField(
                                          obsureText: false,
                                          autofocus: false,
                                          controller: emailController,
                                          hintText: "abc@gmail.com",
                                          isBorderEnabled: true,
                                          validator: (value) =>
                                              TextFieldValidator.validateEmail(
                                                  value!),
                                          focusNode: mailIdFocusNode,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Password",
                                          style: AppTheme.of(context).bodyText,
                                        ),
                                        AppSizedBox.h8,
                                        CustomTextField(
                                          obsureText: passwordVisibility,
                                          controller: passwordController,
                                          hintText: "********",
                                          isBorderEnabled: true,
                                          focusNode: passwordFocusNode,
                                          suffix: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                passwordVisibility =
                                                    !passwordVisibility;
                                              });
                                            },
                                            child: Icon(
                                              passwordVisibility
                                                  ? Icons.visibility_off_rounded
                                                  : Icons.visibility_rounded,
                                              color: AppColors
                                                  .textFieldVisibleIconColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.toNamed(
                                              RouteManager.forgetPasswordPage);
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                            bottom: 14,
                                          ),
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            'Forgot Password?',
                                            style: AppTheme.of(context)
                                                .bodyText
                                                .copyWith(
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  CustomButton(
                                    text: 'Login',
                                    onPressed: () {
                                      final LoginController loginController =
                                          Get.find<LoginController>();
                                      loginController
                                          .login(LoginReqModel(
                                              email:
                                                  emailController.text.trim(),
                                              password:
                                                  passwordController.text))
                                          .then(
                                        (_) {
                                          Get.showSnackbar(
                                            GetSnackBar(
                                              message: loginController
                                                  .errorMessage.value,
                                              duration:
                                                  const Duration(seconds: 2),
                                            ),
                                          );
                                          Get.toNamed(
                                              RouteManager.dashboardPage);
                                        },
                                      );
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Doesn't have an account?",
                                            style:
                                                AppTheme.of(context).bodyText),
                                        GestureDetector(
                                          onTap: () {
                                            Get.toNamed(
                                                RouteManager.signUpPage);
                                          },
                                          child: Text(
                                            ' Sign Up',
                                            style: AppTheme.of(context)
                                                .bodyText
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
