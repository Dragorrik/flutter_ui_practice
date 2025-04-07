import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_uis/coffe_shop_app/components/custom_bottom_navbar.dart';
import 'package:practice_uis/coffe_shop_app/components/upper_home_widgets.dart';
import 'package:practice_uis/coffe_shop_app/model/coffeeItem.dart';

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

  Map<String, List<CoffeeItem>> categoryItems = {
    'Cappuccino': [
      CoffeeItem(
          name: 'Classic Cappuccino',
          subtext: 'With steamed milk foam',
          price: 3.5),
      CoffeeItem(
          name: 'Vanilla Cappuccino',
          subtext: 'Hint of vanilla syrup',
          price: 4.0),
      CoffeeItem(
          name: 'Caramel Cappuccino',
          subtext: 'Sweet caramel drizzle',
          price: 4.2),
      CoffeeItem(
          name: 'Iced Cappuccino', subtext: 'Chilled and creamy', price: 3.8),
    ],
    'Latte': [
      CoffeeItem(name: 'Classic Latte', subtext: 'Rich and smooth', price: 3.2),
      CoffeeItem(name: 'Hazelnut Latte', subtext: 'Nutty delight', price: 3.9),
      CoffeeItem(
          name: 'Pumpkin Spice Latte',
          subtext: 'Seasonal favorite',
          price: 4.5),
      CoffeeItem(name: 'Matcha Latte', subtext: 'Green tea base', price: 4.3),
    ],
    'Espresso': [
      CoffeeItem(
          name: 'Single Espresso', subtext: 'Bold and strong', price: 2.0),
      CoffeeItem(name: 'Double Espresso', subtext: 'Extra boost', price: 2.8),
      CoffeeItem(name: 'Ristretto', subtext: 'More intense', price: 2.5),
      CoffeeItem(name: 'Lungo', subtext: 'Smooth and mild', price: 2.4),
    ],
    'Mocha': [
      CoffeeItem(
          name: 'Classic Mocha', subtext: 'Chocolate & espresso', price: 3.7),
      CoffeeItem(
          name: 'White Mocha', subtext: 'Creamy white chocolate', price: 4.0),
      CoffeeItem(name: 'Mint Mocha', subtext: 'Fresh and sweet', price: 4.3),
      CoffeeItem(name: 'Iced Mocha', subtext: 'Chilled chocolate', price: 3.9),
    ],
  };

  late List<CoffeeItem> allCoffeeItems;

  int selectedItemIndex = 0;

  int selectedIconIndex = 0;

  List<CoffeeItem> currentItems() {
    String selectedCategory = categorys[selectedItemIndex];
    if (selectedCategory == 'All Coffee') {
      return allCoffeeItems;
    } else {
      return categoryItems[selectedCategory] ?? [];
    }
  }

  @override
  void initState() {
    super.initState();
    allCoffeeItems = categoryItems.values.expand((list) => list).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: selectedIconIndex,
          onTap: (index) {
            setState(() {
              selectedIconIndex = index;
            });
          }),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              children: [
                upperHomeWidgets(),
                SizedBox(
                  height: 90.h,
                ),
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
                            selectedItemIndex = index;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.r),
                          //height: 20.h,
                          //width: 0.3.sw,
                          decoration: BoxDecoration(
                            color: selectedItemIndex == index
                                ? Color(0XFFC67C4E)
                                : Color(0XFFF5F5F5),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text(
                              categorys[index],
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: selectedItemIndex == index
                                    ? FontWeight.w900
                                    : FontWeight.w400,
                                color: selectedItemIndex == index
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
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 0.44.sh,
                  width: 0.9.sw,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 15,
                              childAspectRatio: 0.76),
                      itemCount: currentItems().length,
                      itemBuilder: (context, index) {
                        final currentItemList = currentItems();
                        return Container(
                          padding: EdgeInsets.all(10.r),
                          //height: 0.6.sh,
                          decoration: BoxDecoration(
                            color: Color(0XFFF5F5F5),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.r),
                                child: Image.asset(
                                  'assets/images/coffee.png',
                                  height: 100.h,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                currentItemList[index].name,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                currentItemList[index].subtext,
                                style: TextStyle(
                                    fontSize: 9.sp,
                                    color: Colors.black.withOpacity(0.5)),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    currentItemList[index].price.toString(),
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10.r),
                                    decoration: BoxDecoration(
                                      color: Color(0XFFC67C4E),
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 10.r,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
            Positioned(
                top: 0.22.sh,
                left: 20.w,
                right: 20.w,
                child: SizedBox(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Image.asset(
                      'assets/images/banner.png',
                      height: 0.15.sh,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
