import 'package:eventer/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle header1 = TextStyle(
    color: AppColors.primary,
    fontWeight: FontWeight.w700,
    fontSize: 18.0,
  );

  static TextStyle header2 = TextStyle(
    color: AppColors.primary,
    fontWeight: FontWeight.w500,
    fontSize: 17.0,
  );

  static TextStyle header3 = TextStyle(
    color: AppColors.primary,
    fontWeight: FontWeight.w700,
    fontSize: 14.0,
  );

  static TextStyle subtitle = TextStyle(
    color: AppColors.primaryLight,
    fontWeight: FontWeight.w400,
    fontSize: 12.0,
  );

  static TextStyle thumbnailDateMonth = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );

  static TextStyle thumbnailDateDay = TextStyle(
    fontSize: 13.0,
    fontWeight: FontWeight.w600,
    color: AppColors.secondary,
  );
}
