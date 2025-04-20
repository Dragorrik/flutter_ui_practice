import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeeklyBarChart extends StatelessWidget {
  final List<double> calories = [300, 400, 540, 100, 200, 250, 450];

  WeeklyBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: 400.w,
      child: BarChart(
        BarChartData(
          maxY: 600,
          barTouchData: BarTouchData(
            enabled: true,
            touchTooltipData: BarTouchTooltipData(
              getTooltipColor: (group) {
                return Colors.blue.shade100;
              },
              getTooltipItem: (group, groupIndex, rod, rodIndex) {
                return BarTooltipItem(
                  rod.toY.round().toString(),
                  TextStyle(color: Colors.white),
                );
              },
            ),
          ),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  const days = [
                    'Mon',
                    'Tue',
                    'Wed',
                    'Thu',
                    'Fri',
                    'Sat',
                    'Sun'
                  ];
                  return Padding(
                    padding: EdgeInsets.only(top: 8.r),
                    child: Text(
                      days[value.toInt()],
                      style: TextStyle(fontSize: 12.sp, color: Colors.black54),
                    ),
                  );
                },
                reservedSize: 28,
              ),
            ),
          ),
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          barGroups: calories.asMap().entries.map((entry) {
            final index = entry.key;
            final value = entry.value;

            Color barColor = index == 2
                ? Colors.blue // Wed highlighted
                : (index >= 3 && index <= 5
                    ? Colors.green
                    : Colors.blue.shade100);

            return BarChartGroupData(
              x: index,
              barRods: [
                BarChartRodData(
                  toY: value,
                  width: 12,
                  borderRadius: BorderRadius.circular(6),
                  color: barColor,
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
