import 'package:musaliarapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeeklyMonthlyTabWidget extends StatefulWidget {
  final String text1;
  final String text2;
  final int? defaultSelectedIndex;
  const WeeklyMonthlyTabWidget({
    required this.text1,
    required this.text2,
    this.defaultSelectedIndex = 0,
    super.key,
  });

  @override
  State<WeeklyMonthlyTabWidget> createState() => _WeeklyMonthlyTabWidgetState();
}

class _WeeklyMonthlyTabWidgetState extends State<WeeklyMonthlyTabWidget> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.defaultSelectedIndex!;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double tabWidth = (screenWidth / 2) - SizeExtension(25).w;

    return Container(
      height: SizeExtension(70).h,
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: MyColors.purple.withOpacity(.1),
        borderRadius: BorderRadius.circular(SizeExtension(35).r),
      ),
      padding: EdgeInsets.all(SizeExtension(7).w),
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 350),
            curve: Curves.easeInOut,
            top: 0,
            left: _selectedIndex == 0
                ? 0
                : (screenWidth / 2) - SizeExtension(40).w,
            bottom: 0,
            width: tabWidth,
            child: Container(
              decoration: BoxDecoration(
                color: MyColors.purple,
                borderRadius: BorderRadius.circular(SizeExtension(35).r),
              ),
            ),
          ),
          singleTab(
            text: widget.text1,
            index: 0,
            left: true,
            right: false,
            tabWidth: tabWidth,
          ),
          singleTab(
            text: widget.text2,
            index: 1,
            left: false,
            right: true,
            tabWidth: tabWidth,
          ),
        ],
      ),
    );
  }

  Widget singleTab({
    required String text,
    required int index,
    required bool left,
    required bool right,
    required double tabWidth,
  }) {
    return Positioned(
      top: 0,
      bottom: 0,
      left: left ? 0 : null,
      right: right ? 0 : null,
      width: tabWidth,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 450),
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(SizeExtension(30).r),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: _selectedIndex == index
                    ? MyColors.white
                    : MyColors.purple,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
