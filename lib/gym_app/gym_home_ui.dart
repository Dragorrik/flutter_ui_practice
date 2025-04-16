import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_uis/gym_app/widgets/gym_home_widgets.dart';

class GymHomeUi extends StatelessWidget {
  const GymHomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GymHomeWidgets.upperHomeWidgets(Icons.category),
                  Spacer(),
                  GymHomeWidgets.upperHomeWidgets(Icons.chat),
                  SizedBox(width: 10.w),
                  GymHomeWidgets.upperHomeWidgets(Icons.notifications),
                ],
              ),
              SizedBox(height: 30.h),
              Text("Home",
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(height: 15.h),
              Text("Upcoming",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.all(20.r),
                height: 200.h,
                width: double.infinity,
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
                        GymHomeWidgets.upperHomeWidgets(Icons.location_on,
                            size: 15.sp),
                        Text(" 123 Main St, City",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
