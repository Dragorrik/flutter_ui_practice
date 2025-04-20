import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfileWidgets {
  static Widget categories(IconData icon, String title,
      {Color color = Colors.blue}) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 30.r,
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.black54,
          size: 20.r,
        ),
      ],
    );
  }
}
