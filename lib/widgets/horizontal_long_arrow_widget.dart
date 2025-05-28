import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/utils/colors.dart';

class HorizontalLongArrowWidget extends StatelessWidget {
  const HorizontalLongArrowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeExtension(50).h,
      padding: EdgeInsets.symmetric(horizontal: SizeExtension(10).w),
      child: Row(
        children: [
          Container(
            height: SizeExtension(3.7).h,
            width: SizeExtension(40).w,
            decoration: BoxDecoration(
              color: MyColors.purple,
              borderRadius: BorderRadius.circular(SizeExtension(20).r),
            ),
          ),
          SizedBox(width: SizeExtension(10).w),
          Container(
            height: SizeExtension(3.7).h,
            width: SizeExtension(25).w,
            decoration: BoxDecoration(
              color: MyColors.purple,
              borderRadius: BorderRadius.circular(SizeExtension(20).r),
            ),
          ),
          SizedBox(width: SizeExtension(10).w),
          Container(
            height: SizeExtension(3.7).h,
            width: SizeExtension(25).w,
            decoration: BoxDecoration(
              color: MyColors.purple,
              borderRadius: BorderRadius.circular(SizeExtension(20).r),
            ),
          ),
          SizedBox(width: SizeExtension(30).w),
          Expanded(
            child: Container(
              height: SizeExtension(3.7).h,
              width: SizeExtension(25).w,
              decoration: BoxDecoration(
                color: MyColors.purple,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(SizeExtension(20).r),
                  bottomLeft: Radius.circular(SizeExtension(20).r),
                ),
              ),
            ),
          ),
          SizedBox(
            height: SizeExtension(45).h,
            width: SizeExtension(70).w,
            child: Stack(
              children: [
                Positioned(
                  left: SizeExtension(59.6).w,
                  child: Transform.rotate(
                    angle: pi * 1.8,
                    child: Container(
                      width: SizeExtension(3.7).w,
                      height: SizeExtension(25).h,
                      decoration: BoxDecoration(
                        color: MyColors.purple,
                        borderRadius: BorderRadius.circular(
                          SizeExtension(20).r,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: SizeExtension(3.7).h,
                        width: SizeExtension(75).w,
                        decoration: BoxDecoration(
                          color: MyColors.purple,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(SizeExtension(20).r),
                            bottomRight: Radius.circular(SizeExtension(20).r),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: SizeExtension(10).w),
        ],
      ),
    );
  }
}
