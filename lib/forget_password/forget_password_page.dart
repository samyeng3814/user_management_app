import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:user_management_app/constants/constant.dart';
import 'package:user_management_app/theme/themes.dart';
import 'package:user_management_app/utils/app_sized_box.dart';
import 'package:user_management_app/utils/common_text_field.dart';
import 'package:user_management_app/utils/elevated_button.dart';

import '../utils/app_colors.dart';
import '../utils/validation.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  TextEditingController mobileNumberController = TextEditingController();
  FocusNode mobileNumberFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Forget Password",
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight * 0.32,
                  width: screenWidth * 0.66,
                  child: SvgPicture.asset(
                    'assets/svg/forget_password_vector.svg',
                    fit: BoxFit.cover,
                  ),
                ),
                AppSizedBox.h40,
                Text(
                  "Forgot Password",
                  style: AppTheme.of(context).title,
                ),
                AppSizedBox.h16,
                Text(
                  'Don’t worry! it happens. Please enter phone number associated with your account',
                  style: AppTheme.of(context).bodyText.copyWith(
                        color: AppColors.hintTextColor,
                        fontSize: 14,
                      ),
                  textAlign: TextAlign.center,
                ),
                AppSizedBox.h24,
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter Mobile Number",
                        style: AppTheme.of(context).bodyText,
                      ),
                      AppSizedBox.h8,
                      CustomTextField(
                        obsureText: false,
                        autofocus: false,
                        controller: mobileNumberController,
                        isBorderEnabled: true,
                        inputFormatters:
                            TextFieldValidator.mobileNumberValidator,
                        focusNode: mobileNumberFocusNode,
                        prefix: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(right: 12),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                      color: AppColors.hintTextColor,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  '+91',
                                  style: AppTheme.of(context).bodyText,
                                )),
                          ],
                        ),
                        onFieldSubmitted: (val) {
                          FocusScope.of(context).unfocus();
                        },
                      ),
                      AppSizedBox.h20,
                      CustomButton(
                        text: 'Get OTP',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
