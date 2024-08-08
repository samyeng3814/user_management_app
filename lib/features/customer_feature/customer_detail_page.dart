import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:user_management_app/theme/themes.dart';
import 'package:user_management_app/utils/app_colors.dart';
import 'package:user_management_app/utils/app_sized_box.dart';
import 'package:user_management_app/utils/elevated_button.dart';

class CustomerDetailPage extends StatefulWidget {
  const CustomerDetailPage({super.key});

  @override
  State<CustomerDetailPage> createState() => _CustomerDetailPageState();
}

class _CustomerDetailPageState extends State<CustomerDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
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
            padding: const EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 22,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Customer Detail',
                  style: AppTheme.of(context).title.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                ),
                AppSizedBox.h28,
                Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor:
                          AppColors.textFieldVisibleIconColor.withOpacity(0.5),
                      child: Text(
                        'P',
                        style: AppTheme.of(context).bodyText.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColors.blackColor,
                            ),
                      ),
                    ),
                    AppSizedBox.w12,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Customer Name',
                          style: AppTheme.of(context).bodyText,
                        ),
                        AppSizedBox.h8,
                        Text(
                          'ADL45LDO90',
                          style: AppTheme.of(context).bodyText.copyWith(
                                color: AppColors.blackColor.withOpacity(0.5),
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
                Card(
                  elevation: 4,
                  color: AppColors.whiteColor,
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 18),
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  width: 1,
                                  color: AppColors.blackColor.withOpacity(0.6),
                                ),
                              ),
                            ),
                            child: Tooltip(
                              message: 'Call',
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.call,
                                  size: 32,
                                  color: AppColors.blackColor.withOpacity(0.6),
                                ),
                              ),
                            )),
                      ),
                      Expanded(
                        child: Tooltip(
                          message: 'Download bill',
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.download_outlined,
                              size: 32,
                              color: AppColors.blackColor.withOpacity(0.6),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.call,
                                  size: 24,
                                ),
                                AppSizedBox.w8,
                                Text(
                                  '8953489453',
                                  style: AppTheme.of(context).bodyText,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.calendar_today_outlined,
                                  size: 24,
                                ),
                                AppSizedBox.w8,
                                Text(
                                  'Jun 28, 2024',
                                  style: AppTheme.of(context).bodyText,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      AppSizedBox.h12,
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 24,
                          ),
                          AppSizedBox.w8,
                          Text(
                            'Madurai',
                            style: AppTheme.of(context).bodyText,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
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
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: AppColors.textFieldBorderColor,
                                    width: 1,
                                  ),
                                  color: AppColors.textFieldVisibleIconColor
                                      .withOpacity(0.2),
                                ),
                                child: Text(
                                  'TOYOTA',
                                  style: AppTheme.of(context).bodyText,
                                ),
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
                                "Model",
                                style: AppTheme.of(context).bodyText,
                              ),
                              AppSizedBox.h8,
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: AppColors.textFieldBorderColor,
                                    width: 1,
                                  ),
                                  color: AppColors.textFieldVisibleIconColor
                                      .withOpacity(0.2),
                                ),
                                child: Text(
                                  'TOYOTA Corolla',
                                  style: AppTheme.of(context).bodyText,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: AppColors.textFieldBorderColor,
                            width: 1,
                          ),
                          color: AppColors.textFieldVisibleIconColor
                              .withOpacity(0.2),
                        ),
                        child: Text(
                          '₹ 12,988',
                          style: AppTheme.of(context).bodyText,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
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
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: AppColors.textFieldBorderColor,
                                    width: 1,
                                  ),
                                  color: AppColors.textFieldVisibleIconColor
                                      .withOpacity(0.2),
                                ),
                                child: Text(
                                  '₹ 12,0000',
                                  style: AppTheme.of(context).bodyText,
                                ),
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
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: AppColors.textFieldBorderColor,
                                    width: 1,
                                  ),
                                  color: AppColors.textFieldVisibleIconColor
                                      .withOpacity(0.2),
                                ),
                                child: Text(
                                  '₹ 988',
                                  style: AppTheme.of(context).bodyText,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  text: 'Download Bill',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
