import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/utils/colors.dart';

class SavingsCardWidget extends StatelessWidget {
  final String text;
  final String amount;
  final double percentage;
  final Color color;
  final VoidCallback? onTap; // <-- Add this

  const SavingsCardWidget({
    required this.text,
    required this.amount,
    required this.percentage,
    required this.color,
    this.onTap, // <-- Optional
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap, // <-- Use the passed callback
      child: Container(
        height: SizeExtension(110).h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeExtension(23).r),
          border: Border.all(color: MyColors.grey, width: SizeExtension(1.1).w),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: SizeExtension(14).w,
          vertical: SizeExtension(10).h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: SizeExtension(90).w,
                        child: Text(
                          text,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: Theme.of(
                              context,
                            ).textTheme.titleLarge?.color,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: SizeExtension(10).w),
                    Icon(Icons.arrow_forward_ios_rounded, size: 16.sp),
                  ],
                ),
                SizedBox(height: SizeExtension(3).h),
                Text(
                  '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18.sp,
                    // ignore: deprecated_member_use
                    color: MyColors.Black.withOpacity(.9),
                    fontWeight: FontWeight.bold,
                    letterSpacing: -.5,
                  ),
                ),
              ],
            ),
            Container(
              height: SizeExtension(10).h,
              width: SizeExtension(400).w,
              decoration: BoxDecoration(
                // ignore: deprecated_member_use
                color: MyColors.grey.withOpacity(.9),
                borderRadius: BorderRadius.circular(SizeExtension(20).r),
              ),
              child: Row(
                children: [
                  Container(
                    width:
                        1.343 *
                        SizeExtension(percentage.clamp(0, 100).toDouble()).w,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(SizeExtension(20).r),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
