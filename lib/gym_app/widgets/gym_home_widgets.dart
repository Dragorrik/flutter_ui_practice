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

  static Widget upcomingWidgets() {
    return Container(
      padding: EdgeInsets.all(15.r),
      height: 200.h,
      width: 320.w,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              GymHomeWidgets.upperHomeWidgets(Icons.fitness_center),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Yoga Class",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      )),
                  SizedBox(height: 10.h),
                  Text("10 AM - 11 AM",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      )),
                ],
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              GymHomeWidgets.upperHomeWidgets(Icons.location_on, size: 15.sp),
              Text(" 123 Main St, City",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
