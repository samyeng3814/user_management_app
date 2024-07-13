import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:user_management_app/theme/themes.dart';
import 'package:user_management_app/utils/app_colors.dart';
import 'package:user_management_app/utils/app_sized_box.dart';
import 'package:user_management_app/utils/common_text_field.dart';
import 'package:user_management_app/utils/elevated_button.dart';
import 'package:user_management_app/utils/validation.dart';

class AddCustomerPage extends StatefulWidget {
  const AddCustomerPage({super.key});

  @override
  State<AddCustomerPage> createState() => _AddCustomerPageState();
}

class _AddCustomerPageState extends State<AddCustomerPage> {
  TextEditingController customerNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController carBrandController = TextEditingController();
  TextEditingController carModelController = TextEditingController();
  TextEditingController totalSalesAmountController = TextEditingController();
  TextEditingController paidAmountController = TextEditingController();
  TextEditingController pendingAmountController = TextEditingController();

  final FocusNode customerNameFocusNode = FocusNode();
  final FocusNode emailIdFocusNode = FocusNode();
  final FocusNode mobileNumberFocusNode = FocusNode();
  final FocusNode locationFocusNode = FocusNode();
  final FocusNode carBrandFocusNode = FocusNode();
  final FocusNode carModelFocusNode = FocusNode();
  final FocusNode totalSalesAmountFocusNode = FocusNode();
  final FocusNode paidAmountFocusNode = FocusNode();
  final FocusNode pendingAmountFocusNode = FocusNode();

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: AppColors.whiteColor,
        centerTitle: true,
        elevation: 0.2,
        automaticallyImplyLeading: false,
        title: Text(
          "Add Customer",
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
                              "Customer Name",
                              style: AppTheme.of(context).bodyText,
                            ),
                            AppSizedBox.h8,
                            CustomTextField(
                              obsureText: false,
                              autofocus: false,
                              controller: customerNameController,
                              isBorderEnabled: true,
                              inputFormatters: TextFieldValidator.nameValidator,
                              focusNode: customerNameFocusNode,
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
                              inputFormatters: TextFieldValidator.nameValidator,
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
                              inputFormatters:
                                  TextFieldValidator.mobileNumberValidator,
                              focusNode: mobileNumberFocusNode,
                              prefix: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 12),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
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
                                    ),
                                  ),
                                ],
                              ),
                              onFieldSubmitted: (val) {
                                FocusScope.of(context)
                                    .requestFocus(carBrandFocusNode);
                              },
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 96,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Car Brand",
                                    style: AppTheme.of(context).bodyText,
                                  ),
                                  AppSizedBox.h8,
                                  CustomTextField(
                                    obsureText: false,
                                    autofocus: false,
                                    controller: carBrandController,
                                    hintText: "TOYOTA",
                                    isBorderEnabled: true,
                                    focusNode: carBrandFocusNode,
                                    onFieldSubmitted: (val) {
                                      FocusScope.of(context)
                                          .requestFocus(carModelFocusNode);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          AppSizedBox.w24,
                          Expanded(
                            child: SizedBox(
                              height: 96,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Model",
                                    style: AppTheme.of(context).bodyText,
                                  ),
                                  AppSizedBox.h8,
                                  CustomTextField(
                                    obsureText: false,
                                    autofocus: false,
                                    controller: carModelController,
                                    hintText: "TOYOTA Corolla",
                                    isBorderEnabled: true,
                                    focusNode: carModelFocusNode,
                                    onFieldSubmitted: (val) {
                                      FocusScope.of(context).requestFocus(
                                          totalSalesAmountFocusNode);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 96,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "Total Sales Amount",
                              style: AppTheme.of(context).bodyText,
                            ),
                            AppSizedBox.h8,
                            CustomTextField(
                              obsureText: false,
                              autofocus: false,
                              controller: totalSalesAmountController,
                              hintText: '₹ 12,988',
                              isBorderEnabled: true,
                              focusNode: totalSalesAmountFocusNode,
                              onFieldSubmitted: (val) {
                                FocusScope.of(context)
                                    .requestFocus(paidAmountFocusNode);
                              },
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 96,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Paid Amount",
                                    style: AppTheme.of(context).bodyText,
                                  ),
                                  AppSizedBox.h8,
                                  CustomTextField(
                                    obsureText: false,
                                    autofocus: false,
                                    controller: paidAmountController,
                                    hintText: '₹ 12,0000',
                                    isBorderEnabled: true,
                                    focusNode: paidAmountFocusNode,
                                    onFieldSubmitted: (val) {
                                      FocusScope.of(context).requestFocus(
                                          pendingAmountFocusNode);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          AppSizedBox.w24,
                          Expanded(
                            child: SizedBox(
                              height: 96,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Pending Amount",
                                    style: AppTheme.of(context).bodyText,
                                  ),
                                  AppSizedBox.h8,
                                  CustomTextField(
                                    obsureText: false,
                                    autofocus: false,
                                    controller: pendingAmountController,
                                    hintText: "₹ 988",
                                    isBorderEnabled: true,
                                    focusNode: pendingAmountFocusNode,
                                    onFieldSubmitted: (val) {
                                      FocusScope.of(context).unfocus();
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      AppSizedBox.h24,
                      CustomButton(
                        text: 'Add Customer',
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
