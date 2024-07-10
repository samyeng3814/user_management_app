import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:user_management_app/theme/themes.dart';
import 'package:user_management_app/utils/app_colors.dart';
import 'package:user_management_app/utils/app_sized_box.dart';

class OverViewCardWidget extends StatelessWidget {
  final String title;
  final String value;
  final String percentageValue;
  final String msgString;
  final String iconPath;
  final Color valueColor;
  final IconData arrowIcon;

  const OverViewCardWidget({
    super.key,
    required this.title,
    required this.value,
    required this.percentageValue,
    required this.msgString,
    required this.iconPath,
    required this.valueColor,
    required this.arrowIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteColor,
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 14),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor:
                      AppColors.textFieldVisibleIconColor.withOpacity(0.5),
                  radius: 16,
                  child: SvgPicture.asset(
                    'assets/svg/$iconPath.svg',
                  ),
                ),
                AppSizedBox.w12,
                Text(
                  title,
                  style: AppTheme.of(context).bodyText.copyWith(),
                ),
              ],
            ),
            AppSizedBox.h20,
            Text(
              value,
              style: AppTheme.of(context).title,
            ),
            AppSizedBox.h12,
            Row(
              children: [
                Icon(
                  arrowIcon,
                  size: 16,
                  color: valueColor,
                ),
                AppSizedBox.w4,
                Text(
                  percentageValue,
                  style: AppTheme.of(context).bodyText.copyWith(
                        color: valueColor,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  msgString,
                  style: AppTheme.of(context).bodyText,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
