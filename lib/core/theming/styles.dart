import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/core/theming/colors.dart';

class TextStyles {
static TextStyle font24BlackWeight = TextStyle(
fontSize: 24.sp,
  fontWeight: FontWeight.w700,
  color: Colors.black
);


static TextStyle font32BlueBold = TextStyle(
fontSize: 32.sp,
  fontWeight: FontWeight.bold,
  color: AppColors.primaryColor,
);


static TextStyle font13Grey = TextStyle(
fontSize: 13.sp,
  color: AppColors.gray,
);


static TextStyle font16SimiBold = TextStyle(
fontSize: 16.sp,
  color: Colors.white,
  fontWeight: FontWeight.w500,
);


}