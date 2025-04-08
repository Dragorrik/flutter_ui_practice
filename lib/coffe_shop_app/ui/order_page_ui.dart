import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderPageUi extends StatefulWidget {
  const OrderPageUi({super.key});

  @override
  State<OrderPageUi> createState() => _OrderPageUiState();
}

class _OrderPageUiState extends State<OrderPageUi> {
  bool isDeliver = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.all(10.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text('Order',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.r, vertical: 10.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40.h,
                  width: 0.9.sw,
                  padding: EdgeInsets.all(4.r),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isDeliver = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: isDeliver
                                  ? const Color(0xFFC67C4E)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Deliver",
                              style: TextStyle(
                                color: isDeliver ? Colors.white : Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isDeliver = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: !isDeliver
                                  ? const Color(0xFFC67C4E)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Pick Up",
                              style: TextStyle(
                                color: !isDeliver ? Colors.white : Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text("Delivery Address",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 10.h,
                ),
                Text('New York City',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color.fromARGB(255, 43, 42, 42),
                    )),
                Text('1234, 1st Avenue, New York, NY 10001.',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xFFB7B7B7),
                    )),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.r,
                        //vertical: 5.r,
                      ),
                      height: 20.h,
                      //width: 0.38.sw,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      //alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: const Color(0xFFC67C4E),
                            size: 15.sp,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Edit Address",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.r,
                        //vertical: 5.r,
                      ),
                      height: 20.h,
                      // width: 0.38.sw,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      //alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.note_add,
                            color: const Color(0xFFC67C4E),
                            size: 15.sp,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Add note",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.r, horizontal: 20.r),
                  child: Divider(
                    color: const Color.fromARGB(255, 221, 218, 218),
                  ),
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: Image.asset(
                        'assets/images/coffee.png',
                        height: 50.h,
                        width: 50.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cappuccino",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Deep Roasted Coffee",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: const Color(0xFFB7B7B7),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.r,
                      ),
                      height: 20.h,
                      width: 0.08.sw,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Icon(Icons.add,
                          color: const Color(0xFFC67C4E), size: 10.sp),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text('1',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        )),
                    SizedBox(
                      width: 5.w,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.r,
                      ),
                      height: 20.h,
                      width: 0.08.sw,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Icon(Icons.remove,
                          color: const Color(0xFFC67C4E), size: 10.sp),
                    )
                  ],
                )
              ],
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 255, 197, 161),
            thickness: 2,
          ),
          Padding(
              padding: EdgeInsets.all(20.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.r,
                      vertical: 5.r,
                    ),
                    height: 40.h,
                    //width: 0.38.sw,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: const Color.fromARGB(255, 219, 216, 216),
                        width: 1,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Icon(
                          Icons.discount,
                          color: Color(0XFFC67C4E),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          "No discount is applied",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: const Color(0xFFC67C4E),
                          size: 15.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('Payment Summary',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Price',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      Text('\$10.00',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Delivery Fee',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      Text('\$2.00',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                ],
              )),
          Spacer(),
          Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
              ),
              padding: EdgeInsets.only(
                left: 20.r,
                right: 20.r,
                top: 20.r,
                bottom: 40.r,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.wallet,
                        color: Color(0XFFC67C4E),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Cash/Wallet",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                              )),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "\$10.00",
                            style: TextStyle(
                              color: const Color(0xFFC67C4E),
                              fontWeight: FontWeight.w600,
                              fontSize: 11.sp,
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_down,
                          color: Colors.black, size: 25.sp),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.r,
                      vertical: 5.r,
                    ),
                    height: 50.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFFC67C4E),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Order",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
