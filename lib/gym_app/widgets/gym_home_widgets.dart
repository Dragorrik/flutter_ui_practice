import 'package:fl_chart/fl_chart.dart';
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

  static Widget activitiesGraphWidgets() {
    return SizedBox(
      height: 250.h,
      child: LineChart(
        LineChartData(
          minY: 0,
          maxY: 5,
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: true, reservedSize: 30),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  if (!value.isNaN &&
                      value.isFinite &&
                      value.toInt() >= 0 &&
                      value.toInt() < weekdays.length) {
                    return Text(weekdays[value.toInt()],
                        style: const TextStyle(color: Colors.grey));
                  }
                  return const SizedBox.shrink();
                },
                interval: 1,
              ),
            ),
          ),
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: dataPoints,
              isCurved: true,
              dotData: FlDotData(show: true),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [Colors.blue.withOpacity(0.3), Colors.transparent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              color: Colors.blue,
              barWidth: 3,
            ),
          ],
          lineTouchData: LineTouchData(
            getTouchedSpotIndicator:
                (LineChartBarData barData, List<int> indicators) {
              return indicators.map((index) {
                return TouchedSpotIndicatorData(
                  FlLine(color: Colors.blue, strokeWidth: 2),
                  FlDotData(show: true),
                );
              }).toList();
            },
            touchTooltipData: LineTouchTooltipData(
              getTooltipColor: (touchedSpot) {
                return Colors.blue;
              },
              getTooltipItems: (touchedSpots) {
                return touchedSpots.map((spot) {
                  final hours = spot.y.floor();
                  final mins = ((spot.y - hours) * 60).round();
                  return LineTooltipItem(
                    "$hours h $mins min",
                    const TextStyle(
                      color: Colors.white,
                    ),
                  );
                }).toList();
              },
            ),
          ),
        ),
      ),
    );
  }
}
