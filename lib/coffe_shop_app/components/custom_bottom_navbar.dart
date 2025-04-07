import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, -2),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(
            index: 0,
            icon: Icons.home,
            selected: selectedIndex == 0,
            onTap: onTap,
          ),
          _buildNavItem(
            index: 1,
            icon: Icons.favorite_border,
            selected: selectedIndex == 1,
            onTap: onTap,
          ),
          _buildNavItem(
            index: 2,
            icon: Icons.shopping_bag_outlined,
            selected: selectedIndex == 2,
            onTap: onTap,
          ),
          _buildNavItem(
            index: 3,
            icon: Icons.notifications_none,
            selected: selectedIndex == 3,
            onTap: onTap,
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required IconData icon,
    required bool selected,
    required Function(int) onTap,
  }) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 26.r,
            color: selected ? Color(0xFFC67C4E) : Colors.grey,
          ),
          SizedBox(height: 4.h),
          if (selected)
            Container(
              width: 6.r,
              height: 6.r,
              decoration: BoxDecoration(
                color: Color(0xFFC67C4E),
                shape: BoxShape.circle,
              ),
            )
          else
            SizedBox(height: 6.r),
        ],
      ),
    );
  }
}
