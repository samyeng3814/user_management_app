import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:user_management_app/constants/constant.dart';
import 'package:user_management_app/navigation/route_manager.dart';
import 'package:user_management_app/theme/themes.dart';
import 'package:user_management_app/utils/app_colors.dart';
import 'package:user_management_app/utils/app_sized_box.dart';
import 'package:user_management_app/utils/common_text_field.dart';
import 'package:user_management_app/utils/validation.dart';

class CustomerListPage extends StatefulWidget {
  const CustomerListPage({super.key});

  @override
  State<CustomerListPage> createState() => _CustomerListPageState();
}

class _CustomerListPageState extends State<CustomerListPage> {
  TextEditingController customerSearchController = TextEditingController();
  FocusNode customerFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.2,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Customers",
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 22,
                ),
                child: Column(
                  children: [
                    CustomTextField(
                      obsureText: false,
                      autofocus: false,
                      onTapOutside: () {
                        FocusScope.of(context).unfocus();
                      },
                      controller: customerSearchController,
                      isBorderEnabled: true,
                      inputFormatters: TextFieldValidator.nameValidator,
                      focusNode: customerFocusNode,
                      hintText: 'Search Customer',
                      prefix: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 12),
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  color: AppColors.hintTextColor,
                                ),
                              ),
                            ),
                            child: SvgPicture.asset(
                              'assets/svg/search_icon.svg',
                            ),
                          ),
                        ],
                      ),
                      onFieldSubmitted: (val) {
                        FocusScope.of(context).unfocus();
                      },
                    ),
                    AppSizedBox.h12,
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.textFieldBorderColor,
                              width: 1,
                            ),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.filter_alt_outlined,
                                size: 18,
                              ),
                              AppSizedBox.w8,
                              Text(
                                'Filter',
                                style: AppTheme.of(context).bodyText,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: AppColors.textFieldBorderColor,
                                width: 1,
                              ),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.calendar_month,
                                  size: 18,
                                ),
                                AppSizedBox.w8,
                                Text(
                                  'May 02, 2024 - July 12, 2024',
                                  style: AppTheme.of(context).bodyText,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              AppSizedBox.h6,
              SizedBox(
                height: screenHeight * 0.72,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  shrinkWrap: true,
                  itemCount: 25,
                  itemBuilder: (context, index) {
                    return Slidable(
                      closeOnScroll: true,
                      key: const ValueKey(0),
                      endActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (context) {},
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.black38,
                            icon: Icons.mode_edit_outline_outlined,
                          ),
                          SlidableAction(
                            onPressed: (context) {},
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.black38,
                            icon: Icons.delete_outline,
                          ),
                          SlidableAction(
                            onPressed: (context) {},
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.black38,
                            icon: Icons.call,
                          ),
                        ],
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(14),
                        onTap: () {
                          Get.toNamed(RouteManager.customerDetailPage);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 12.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 28,
                                backgroundColor: AppColors
                                    .textFieldVisibleIconColor
                                    .withOpacity(0.5),
                                child: Text(
                                  'P',
                                  style: AppTheme.of(context).bodyText.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.blackColor,
                                      ),
                                ),
                              ),
                              AppSizedBox.w12,
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Customer Name',
                                          style: AppTheme.of(context).bodyText,
                                        ),
                                        AppSizedBox.h8,
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.call,
                                              size: 18,
                                            ),
                                            AppSizedBox.w8,
                                            Text(
                                              '8953489453',
                                              style:
                                                  AppTheme.of(context).bodyText,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.calendar_today_outlined,
                                              size: 18,
                                            ),
                                            AppSizedBox.w8,
                                            Text(
                                              '15/08/2024',
                                              style:
                                                  AppTheme.of(context).bodyText,
                                            ),
                                          ],
                                        ),
                                        AppSizedBox.h8,
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.location_on_outlined,
                                              size: 18,
                                            ),
                                            AppSizedBox.w8,
                                            Text(
                                              'Madurai',
                                              style:
                                                  AppTheme.of(context).bodyText,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
