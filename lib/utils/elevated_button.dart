import 'package:flutter/material.dart';
import 'package:user_management_app/theme/themes.dart';
import 'package:user_management_app/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color? buttonColor;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.buttonColor = AppColors.blackColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        alignment: Alignment.center,
        backgroundColor: buttonColor,
        elevation: 1,
        padding: const EdgeInsets.all(14),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
      onPressed: onPressed,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            text,
            style: AppTheme.of(context)
                .bodyText
                .copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )
                .copyWith(
                  color: AppColors.whiteColor,
                ),
          ),
        ),
      ),
    );
  }
}
