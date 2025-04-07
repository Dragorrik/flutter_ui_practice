import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardUi extends StatelessWidget {
  const OnboardUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(children: [
          Image.asset(
            'assets/images/onboard.png',
            height: 522.h,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Positioned(
            top: 0.5.sh,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(20.r),
              height: 0.5.sh,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black,
                  ],
                  stops: [0.05, 0.3],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Fall in Love with\nCoffee in Blissful\nDelight',
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Welcome to the world of coffee,\nwhere every sip is a journey of\nflavors and aromas.',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(10.r),
                      height: 50.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Text('Get Started',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
