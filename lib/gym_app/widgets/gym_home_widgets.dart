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

  static Widget gymsNearMeWidgets() {
    return Container(
      padding: EdgeInsets.all(20.r),
      height: 200.h,
      width: 150.w,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Gym Name",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w800,
              )),
          SizedBox(height: 10.h),
          Row(
            children: [
              Icon(Icons.timer, size: 15.sp),
              SizedBox(width: 5.w),
              Text("10 AM - 11 AM",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Icon(Icons.route, size: 15.sp),
              SizedBox(width: 5.w),
              Text("5 km",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Icon(Icons.star, size: 15.sp),
              SizedBox(width: 5.w),
              Text("4.5",
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
