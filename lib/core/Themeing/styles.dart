import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projectfci/core/Themeing/colors.dart';

abstract class AppStyles {
  static TextStyle font23WhiteBold = TextStyle(
    fontSize: 23.sp,
    fontWeight: FontWeight.bold,
    color: MainColors.Text_white_color,
  );
  static TextStyle font20WhiteBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: MainColors.Text_white_color,
  );
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: const Color.fromARGB(255, 0, 0, 0),
  );
  static TextStyle font28BlackBold = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
    color: const Color.fromARGB(255, 0, 0, 0),
  );
}
