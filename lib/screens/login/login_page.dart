import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_management_app/constants/constant.dart';
import 'package:user_management_app/theme/themes.dart';
import 'package:user_management_app/utils/app_colors.dart';
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
  final FocusNode userIdFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  bool passwordVisibility = true;

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Transform.translate(
              offset: Offset(0.0, -screenHeight * 0.32),
              child: Transform.rotate(
                angle: pi / 4.3,
                child: Container(
                  width: screenHeight * 0.7,
                  height: screenHeight * 0.75,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(0.48, -0.88),
                      end: Alignment(-0.48, 0.88),
                      colors: [
                        Color(0xFFF36B6B),
                        Color(0xFFFDC912),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(130),
                    ),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(screenWidth * 0.4, screenHeight * 0.7),
              child: Container(
                width: 428,
                height: 428,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    transform: const GradientRotation(-90),
                    begin: const Alignment(1.00, 0.00),
                    end: const Alignment(-3, 0),
                    colors: [
                      AppColors.primaryColor,
                      AppColors.secondaryColor,
                    ],
                  ),
                  shape: const CircleBorder(),
                ),
              ),
            ),
            Center(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                child: SingleChildScrollView(
                  child: Container(
                    width: screenWidth - (screenWidth * 0.12),
                    // height: height - (height * 0.12),
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: const Alignment(0.8, -0.37),
                        end: const Alignment(-0.8, 0.37),
                        colors: [
                          Colors.white.withOpacity(0.7),
                          Colors.white.withOpacity(0.6),
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
                        child: _buildPageContent(),
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

  Widget _buildPageContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Login",
          style: AppTheme.of(context).title1,
        ),
        SizedBox(
          height: screenHeight * 0.04,
        ),
        Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email ID",
                      style: AppTheme.of(context).subtitle2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      autofocus: false,
                      cursorColor: AppColors.primaryColor,
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        fillColor: Color(0xfff3f3f4),
                        filled: true,
                      ),
                      // validator: (value) {},
                      onSaved: (value) {},
                      focusNode: userIdFocusNode,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: AppTheme.of(context).subtitle2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.done,
                      controller: passwordController,
                      cursorColor: AppColors.primaryColor,
                      autofocus: false,
                      obscureText: passwordVisibility,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              if (passwordVisibility) {
                                passwordVisibility = false;
                              } else {
                                passwordVisibility = true;
                              }
                            });
                          },
                          child: Icon(
                            passwordVisibility
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: Colors.black38,
                          ),
                        ),
                        border: InputBorder.none,
                        fillColor: const Color(0xfff3f3f4),
                        filled: true,
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.deny(
                          RegExValidation.spaceRegExp,
                        ),
                      ],
                      // validator: (value) {},
                      onSaved: (value) {},
                      focusNode: passwordFocusNode,
                    ),
                    SizedBox(
                      height: screenHeight * 0.035,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,
                        backgroundColor: AppColors.primaryColor,
                        elevation: 1,
                        padding: const EdgeInsets.all(8),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            'Login',
                            style: AppTheme.of(context).title2.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password ?',
                  style: AppTheme.of(context).bodyText1,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * .055,
        )
      ],
    );
  }
}
