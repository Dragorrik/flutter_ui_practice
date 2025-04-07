import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_uis/coffe_shop_app/components/upper_home_widgets.dart';

class CoffeHomeUi extends StatefulWidget {
  const CoffeHomeUi({super.key});

  @override
  State<CoffeHomeUi> createState() => _CoffeHomeUiState();
}

class _CoffeHomeUiState extends State<CoffeHomeUi> {
  List<String> categorys = [
    'All Coffee',
    'Cappuccino',
    'Latte',
    'Espresso',
    'Mocha',
  ];

  int selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          upperHomeWidgets(),
          SizedBox(
            height: 60.h,
          ),
          Column(
            children: [
              SizedBox(
                height: 40.h,
                width: 0.9.sw,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: categorys.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategory = index;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.r),
                        //height: 20.h,
                        //width: 0.3.sw,
                        decoration: BoxDecoration(
                          color: selectedCategory == index
                              ? Color(0XFFC67C4E)
                              : Color(0XFFF5F5F5),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: Text(
                            categorys[index],
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: selectedCategory == index
                                  ? FontWeight.w900
                                  : FontWeight.w400,
                              color: selectedCategory == index
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 13.w,
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
