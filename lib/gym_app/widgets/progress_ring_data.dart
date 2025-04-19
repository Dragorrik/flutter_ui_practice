import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressRingData extends StatelessWidget {
  final Color color;
  final String text;
  final String value;

  const ProgressRingData({
    super.key,
    required this.color,
    required this.text,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.r),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(radius: 5.r, backgroundColor: color),
          SizedBox(width: 8.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('$text  ',
                  style: const TextStyle(fontWeight: FontWeight.w600)),
              Text(value),
            ],
          )
        ],
      ),
    );
  }
}
