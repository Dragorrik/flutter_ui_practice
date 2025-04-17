import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class StatisticWidgets {
  static Widget calenderWidget(String monthText, List<DateTime> weekDates,
      DateTime selectedDate, Function(DateTime) onDateSelected) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(monthText,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            color: const Color(0xFFF7F9FA),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: weekDates.map((date) {
              final isSelected = date.day == selectedDate.day &&
                  date.month == selectedDate.month &&
                  date.year == selectedDate.year;

              return GestureDetector(
                onTap: () {
                  onDateSelected(date);
                },
                child: Column(
                  children: [
                    Text(
                      DateFormat.E().format(date)[0], // First letter of weekday
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.black : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '${date.day}',
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.grey[700],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }

  static Widget overviewWidgets() {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(15.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 30.h,
                width: 30.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 85, 126, 209)),
                child: Icon(
                  Icons.fitness_center,
                  size: 18.sp,
                  color: Colors.white,
                )),
            SizedBox(height: 10.h),
            Text("15",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(height: 10.h),
            Row(
              children: [
                Text("Exercises",
                    style: TextStyle(fontSize: 12.sp, color: Colors.grey)),
                SizedBox(width: 15.w),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
