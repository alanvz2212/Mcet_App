import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:musaliarapp/utils/colors.dart';

class MenuWidget extends StatelessWidget {
  final Color? color;
  const MenuWidget({this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeExtension(20).h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (var i = 0; i < 2; i++)
            Container(
              height: SizeExtension(7).h,
              width: SizeExtension(7).w,
              decoration: BoxDecoration(
                color: MyColors.transparent,
                borderRadius: BorderRadius.circular(SizeExtension(4).r),
                border: Border.all(
                  color: color ?? MyColors.darkGreen,
                  width: SizeExtension(1.9).w,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
