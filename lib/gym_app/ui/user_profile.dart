import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_uis/gym_app/widgets/user_profile_widgets.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "User Profile",
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 70.r,
                    backgroundImage: NetworkImage(
                        'https://www.w3schools.com/howto/img_avatar.png'),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    children: [
                      Text("Md. Aarik Enam",
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text("aarikanan@gmail.com",
                          style: TextStyle(
                              fontSize: 14.sp, color: Colors.black54)),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 35.w),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.r),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10.r,
                      offset: Offset(0, 5.h),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    UserProfileWidgets.categories(
                        Icons.fitness_center, "Fitness Level"),
                    SizedBox(
                      height: 30.h,
                    ),
                    UserProfileWidgets.categories(
                        Icons.medical_services, "Medical Condition"),
                    SizedBox(
                      height: 30.h,
                    ),
                    UserProfileWidgets.categories(Icons.favorite, "Herat Rate"),
                    SizedBox(
                      height: 30.h,
                    ),
                    UserProfileWidgets.categories(Icons.flag, "Weekly Goal"),
                    SizedBox(
                      height: 30.h,
                    ),
                    UserProfileWidgets.categories(
                        Icons.restaurant_menu, "Nutrition"),
                    SizedBox(
                      height: 30.h,
                    ),
                    UserProfileWidgets.categories(
                        Icons.calendar_today, "Active Days"),
                    SizedBox(
                      height: 130.h,
                    ),
                    UserProfileWidgets.categories(Icons.logout, "Logout",
                        color: Colors.red),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
