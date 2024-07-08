import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_management_app/utils/app_colors.dart';

String interFontFamily = "Inter";

abstract class AppTheme {
  static AppTheme of(BuildContext context) {
    return LightModeTheme();
  }

  TextStyle get title1 => typography.title1;
  TextStyle get title2 => typography.title2;
  TextStyle get title3 => typography.title3;
  TextStyle get subtitle1 => typography.subtitle1;
  TextStyle get subtitle2 => typography.subtitle2;
  TextStyle get bodyText1 => typography.bodyText1;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends AppTheme {}

abstract class Typography {
  TextStyle get title1;
  TextStyle get title2;
  TextStyle get title3;
  TextStyle get subtitle1;
  TextStyle get subtitle2;
  TextStyle get bodyText1;
  TextStyle get bodyText2;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final AppTheme theme;

  @override
  TextStyle get title1 => GoogleFonts.getFont(
        interFontFamily,
        color: AppColors.blackColor,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      );
  @override
  TextStyle get title2 => GoogleFonts.getFont(
        interFontFamily,
        color: AppColors.blackColor,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
  @override
  TextStyle get title3 => GoogleFonts.getFont(
        interFontFamily,
        color: AppColors.blackColor,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
  @override
  TextStyle get subtitle1 => GoogleFonts.getFont(
        interFontFamily,
        color: const Color(0xFFA7A7A7),
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );
  @override
  TextStyle get subtitle2 => GoogleFonts.getFont(
        interFontFamily,
        color: AppColors.blackColor,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );
  @override
  TextStyle get bodyText1 => GoogleFonts.getFont(
        interFontFamily,
        color: AppColors.blackColor,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );
  @override
  TextStyle get bodyText2 => GoogleFonts.getFont(
        interFontFamily,
        color: AppColors.blackColor,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily = "Inter",
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
