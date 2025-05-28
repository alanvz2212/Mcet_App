import 'dart:math';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/utils/colors.dart';
import 'package:flutter/material.dart';

class TiltedBarWidget extends StatelessWidget {
  const TiltedBarWidget({super.key});

  static const int gap = 25;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeExtension(200).h,
      child: Stack(
        children: [
          Positioned(
            top: SizeExtension(5).h,
            bottom: SizeExtension(5).h,
            right: SizeExtension(10).w,
            child: Container(
              height: SizeExtension(190).h,
              width: SizeExtension(30).w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [MyColors.lightPurple, MyColors.lightYellow],
                  stops: [.05, .4],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(SizeExtension(20).r),
              ),
            ),
          ),
          Positioned(
            top: SizeExtension(5).h,
            bottom: SizeExtension(5).h,
            right: SizeExtension(40 + (gap * 1.15)).w,
            child: Container(
              height: SizeExtension(190).h,
              width: SizeExtension(30).w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [MyColors.purple, MyColors.green],
                  stops: [.001, .3],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(SizeExtension(20).r),
              ),
            ),
          ),
          Positioned(
            top: SizeExtension(5).h,
            bottom: SizeExtension(3).h,
            right: SizeExtension(60 + (gap * 2.7)).w,
            child: Transform.rotate(
              angle: pi * 2.1,
              child: Container(
                height: SizeExtension(190).h,
                width: SizeExtension(30).w,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [MyColors.orange, MyColors.lightPurple],
                    stops: [.03, .25],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(SizeExtension(20).r),
                ),
              ),
            ),
          ),
          Positioned(
            top: SizeExtension(10).h,
            right: SizeExtension(60 + (gap * 5.5)).w,
            child: Transform.rotate(
              angle: pi * 2.223,
              child: Container(
                height: SizeExtension(205).h,
                width: SizeExtension(30).w,
                decoration: BoxDecoration(
                  color: MyColors.purple,
                  borderRadius: BorderRadius.circular(SizeExtension(20).r),
                ),
              ),
            ),
          ),
          Positioned(
            top: SizeExtension(72).h,
            left: SizeExtension(32).w,
            child: Transform.rotate(
              angle: pi * 2.223,
              child: Container(
                height: SizeExtension(50).h,
                width: SizeExtension(50).w,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [MyColors.orange, MyColors.lightOrange],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(SizeExtension(50).r),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
