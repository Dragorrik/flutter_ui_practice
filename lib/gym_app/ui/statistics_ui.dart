import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:practice_uis/gym_app/widgets/progress_ring_data.dart';
import 'package:practice_uis/gym_app/widgets/progress_rings.dart';
import 'package:practice_uis/gym_app/widgets/statistic_widgets.dart';

class StatisticsUi extends StatefulWidget {
  const StatisticsUi({super.key});

  @override
  State<StatisticsUi> createState() => _StatisticsUiState();
}

class _StatisticsUiState extends State<StatisticsUi> {
  DateTime selectedDate = DateTime.now();

  List<DateTime> getWeekDates(DateTime date) {
    final start = date.subtract(Duration(days: date.weekday - 1));
    return List.generate(7, (index) => start.add(Duration(days: index)));
  }

  @override
  Widget build(BuildContext context) {
    final weekDates = getWeekDates(selectedDate);
    final monthText = DateFormat('MMMM yyyy').format(selectedDate);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Statistics",
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20.h,
                ),
                StatisticWidgets.calenderWidget(
                    monthText, weekDates, selectedDate, (date) {
                  setState(() {
                    selectedDate = date;
                  });
                }),
                SizedBox(
                  height: 20.h,
                ),
                Text("Overview",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StatisticWidgets.overviewWidgets(),
                      StatisticWidgets.overviewWidgets(),
                      StatisticWidgets.overviewWidgets(),
                    ]),
                SizedBox(
                  height: 20.h,
                ),
                Text("Daily Progress",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const ConcentricProgressRings(),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        ProgressRingData(
                            color: Colors.lightBlue,
                            text: "Sleep",
                            value: "6h 5min/8h"),
                        ProgressRingData(
                            color: Colors.pinkAccent,
                            text: "Calories",
                            value: "1050/2000"),
                        ProgressRingData(
                            color: Colors.orangeAccent,
                            text: "Steps",
                            value: "2015/6000"),
                      ],
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
