import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_uis/gym_app/widgets/gym_home_widgets.dart';

class GymHomeUi extends StatelessWidget {
  GymHomeUi({super.key});

  final List<FlSpot> dataPoints = [
    FlSpot(0, 3.2),
    FlSpot(1, 2.0),
    FlSpot(2, 3.1),
    FlSpot(3, 4.2),
    FlSpot(4, 3.8),
    FlSpot(5, 4.7),
    FlSpot(6, 4.3),
  ];

  final List<String> weekdays = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun'
  ];

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
              SizedBox(
                height: 200.h,
                width: 380.w,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  separatorBuilder: (context, index) => SizedBox(width: 10.w),
                  itemBuilder: (context, index) =>
                      GymHomeWidgets.upcomingWidgets(),
                ),
              ),
              SizedBox(height: 25.h),
              Text("Gyms Near You",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(height: 10.h),
              SizedBox(
                height: 150.h,
                width: 380.w,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (context, index) => SizedBox(width: 10.w),
                  itemBuilder: (context, index) =>
                      GymHomeWidgets.gymsNearMeWidgets(),
                ),
              ),
              SizedBox(height: 25.h),
              Text("Activities",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(height: 10.h),
              ,
            ],
          ),
        ),
      ),
    );
  }
}
