import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget upperHomeWidgets() {
  return Container(
    padding: EdgeInsets.all(20.r),
    height: 0.3.sh,
    decoration: BoxDecoration(
      color: Color(0XFF1F1F1F),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25.h),
        Text(
          'Location',
          style: TextStyle(
              fontSize: 11, fontWeight: FontWeight.w300, color: Colors.white30),
        ),
        Row(
          children: [
            Text(
              'Baliapukur,Rajshsahi',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.arrow_downward,
              size: 15,
              color: Colors.white,
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 0.75.sw,
              child: Container(
                height: 40.h,
                padding: EdgeInsets.symmetric(vertical: 10.r),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.02),
                      Colors.white.withOpacity(0.05),
                    ],
                    stops: [0.02, 1],
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: 'Search coffee',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 40.h,
              decoration: BoxDecoration(
                color: Color(0XFFC67C4E),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.filter_list,
                  color: Colors.white,
                  size: 12.sp,
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}
