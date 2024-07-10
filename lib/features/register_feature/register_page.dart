import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:user_management_app/theme/themes.dart';
import 'package:user_management_app/utils/app_colors.dart';
import 'package:user_management_app/utils/app_sized_box.dart';
import 'package:user_management_app/utils/common_text_field.dart';
import 'package:user_management_app/utils/elevated_button.dart';
import 'package:user_management_app/utils/validation.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    super.key,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController shopNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  final FocusNode shopNameFocusNode = FocusNode();
  final FocusNode emailIdFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode confirmPasswordFocusNode = FocusNode();
  final FocusNode mobileNumberFocusNode = FocusNode();
  final FocusNode locationFocusNode = FocusNode();
  bool passwordVisibility = true;
  bool confirmPasswordVisibility = true;

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Register",
          style: AppTheme.of(context).title,
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: SizedBox(
            height: 24,
            width: 24,
            child: SvgPicture.asset(
              'assets/svg/expand_left_arrow.svg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Shop Name",
                                    style: AppTheme.of(context).bodyText,
                                  ),
                                  AppSizedBox.h8,
                                  CustomTextField(
                                    obsureText: false,
                                    autofocus: false,
                                    controller: shopNameController,
                                    isBorderEnabled: true,
                                    inputFormatters:
                                        TextFieldValidator.nameValidator,
                                    focusNode: shopNameFocusNode,
                                    onFieldSubmitted: (val) {
                                      FocusScope.of(context)
                                          .requestFocus(locationFocusNode);
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Location",
                                    style: AppTheme.of(context).bodyText,
                                  ),
                                  AppSizedBox.h8,
                                  CustomTextField(
                                    obsureText: false,
                                    autofocus: false,
                                    controller: locationController,
                                    isBorderEnabled: true,
                                    inputFormatters:
                                        TextFieldValidator.nameValidator,
                                    focusNode: locationFocusNode,
                                    onFieldSubmitted: (val) {
                                      FocusScope.of(context)
                                          .requestFocus(emailIdFocusNode);
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                    inputFormatters:
                                        TextFieldValidator.emailValidator,
                                    // validator: (value) {},
                                    focusNode: emailIdFocusNode,
                                    onFieldSubmitted: (val) {
                                      FocusScope.of(context)
                                          .requestFocus(mobileNumberFocusNode);
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mobile",
                                    style: AppTheme.of(context).bodyText,
                                  ),
                                  AppSizedBox.h8,
                                  CustomTextField(
                                    obsureText: false,
                                    autofocus: false,
                                    controller: mobileNumberController,
                                    isBorderEnabled: true,
                                    inputFormatters: TextFieldValidator
                                        .mobileNumberValidator,
                                    focusNode: mobileNumberFocusNode,
                                    prefix: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            margin: const EdgeInsets.only(
                                                right: 12),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 12),
                                            decoration: BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color:
                                                      AppColors.hintTextColor,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              '+91',
                                              style:
                                                  AppTheme.of(context).bodyText,
                                            )),
                                      ],
                                    ),
                                    onFieldSubmitted: (val) {
                                      FocusScope.of(context)
                                          .requestFocus(passwordFocusNode);
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                    inputFormatters:
                                        TextFieldValidator.passwordRegExp,
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
                                        color:
                                            AppColors.textFieldVisibleIconColor,
                                      ),
                                    ),
                                    onFieldSubmitted: (val) {
                                      FocusScope.of(context).requestFocus(
                                          confirmPasswordFocusNode);
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Confirm Password",
                                    style: AppTheme.of(context).bodyText,
                                  ),
                                  AppSizedBox.h8,
                                  CustomTextField(
                                    obsureText: confirmPasswordVisibility,
                                    controller: confirmPasswordController,
                                    hintText: "********",
                                    isBorderEnabled: true,
                                    inputFormatters:
                                        TextFieldValidator.passwordRegExp,
                                    focusNode: confirmPasswordFocusNode,
                                    suffix: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          confirmPasswordVisibility =
                                              !confirmPasswordVisibility;
                                        });
                                      },
                                      child: Icon(
                                        passwordVisibility
                                            ? Icons.visibility_off_rounded
                                            : Icons.visibility_rounded,
                                        color:
                                            AppColors.textFieldVisibleIconColor,
                                      ),
                                    ),
                                    onFieldSubmitted: (val) {
                                      FocusScope.of(context).unfocus();
                                    },
                                  ),
                                ],
                              ),
                            ),
                            AppSizedBox.h12,
                            CustomButton(
                              text: 'Sign Up',
                              onPressed: () {},
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 24.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Have an account?",
                                      style: AppTheme.of(context).bodyText),
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed('/login_page');
                                    },
                                    child: Text(
                                      ' Sign In',
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
          ],
        ),
      ),
    );
  }
}
