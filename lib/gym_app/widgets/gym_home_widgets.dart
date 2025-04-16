import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GymHomeWidgets {
  static Widget upperHomeWidgets(IconData icon, {double size = 20}) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade200,
        //borderRadius: BorderRadius.circular(10.r),
      ),
      child: Icon(icon, size: size.sp, color: Colors.black),
    );
  }
}
