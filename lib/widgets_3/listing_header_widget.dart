

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/utils/colors.dart';

class ListingHeaderWidget extends StatelessWidget {
  const ListingHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeExtension(70).h,
      margin: EdgeInsets.symmetric(horizontal: SizeExtension(20).w),
      child: Row(
        children: [
          Container(
            width: SizeExtension(62).w,
            height: SizeExtension(62).h,
            decoration: BoxDecoration(
              color: MyColors.lightGrey,
              borderRadius: BorderRadius.circular(SizeExtension(55).r),
            ),
            child: Icon(Icons.menu_rounded, size: 30.sp),
          ),
          const Spacer(),
          Container(
            width: SizeExtension(62).w,
            height: SizeExtension(62).h,
            decoration: BoxDecoration(
              color: MyColors.lightGrey,
              borderRadius: BorderRadius.circular(SizeExtension(55).r),
            ),
            child: Icon(Icons.search_rounded, size: 30.sp),
          ),
          SizedBox(width: SizeExtension(5).w),
          Container(
            width: SizeExtension(62).w,
            height: SizeExtension(62).h,
            decoration: BoxDecoration(
              color: MyColors.lightGrey,
              borderRadius: BorderRadius.circular(SizeExtension(55).r),
            ),
            child: Icon(Icons.notifications_none_rounded, size: 30.sp),
          ),
          SizedBox(width: SizeExtension(5).w),
          Container(
            width: SizeExtension(62).w,
            height: SizeExtension(62).h,
            decoration: BoxDecoration(
              color: MyColors.lightGrey,
              borderRadius: BorderRadius.circular(SizeExtension(55).r),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(SizeExtension(55).r),
              child: Image.asset(
                'assets/profile/profile_4.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
