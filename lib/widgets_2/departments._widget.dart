
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/utils/colors.dart';

class DepartmentsWidget extends StatelessWidget {
  const DepartmentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeExtension(25).w),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(SizeExtension(40).r),
        child: Container(
          height: SizeExtension(210).h,
          width: double.infinity,
          decoration: BoxDecoration(color: const Color.fromARGB(255, 0, 0, 0)),
          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      bottom: -SizeExtension(80).h,
                      left: -SizeExtension(95).w,
                      child: Image.asset(
                        'assets/images/Library 1.jpg',
                        height: SizeExtension(290).h,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: SizeExtension(140).w,
                margin: EdgeInsets.only(
                  top: SizeExtension(7).h,
                  right: SizeExtension(7).w,
                  bottom: SizeExtension(7).h,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      height: SizeExtension(160).h,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 69, 142, 80),
                        borderRadius: BorderRadius.circular(
                          SizeExtension(30).r,
                        ),
                      ),
                      padding: EdgeInsets.all(SizeExtension(5).w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: SizeExtension(10).h),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: SizeExtension(10).w,
                                ),
                                child: Text(
                                  'Succulent',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: MyColors.greenColor,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: SizeExtension(10).w,
                                ),
                                child: Text(
                                  '12 days ago planted',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: MyColors.grey,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: SizeExtension(200).w,
                            height: SizeExtension(70).h,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 86, 85, 85),
                              borderRadius: BorderRadius.circular(
                                SizeExtension(23).r,
                              ),
                            ),
                            padding: EdgeInsets.only(left: SizeExtension(12).w),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(SizeExtension(10).w),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      50,
                                      50,
                                      50,
                                    ),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        // ignore: deprecated_member_use
                                        color: MyColors.Black.withOpacity(0.1),
                                        blurRadius: SizeExtension(5).r,
                                        spreadRadius: SizeExtension(1).r,
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    CupertinoIcons.book,
                                    color: MyColors.greenColor,
                                    size: 18.sp,
                                  ),
                                ),
                                SizedBox(width: SizeExtension(12).w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Room temp',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: MyColors.grey,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: -1,
                                      ),
                                    ),
                                    Text(
                                      '24°C',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: MyColors.Black,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: -1,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: SizeExtension(5).h),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            233,
                            230,
                            230,
                            // ignore: deprecated_member_use
                          ).withOpacity(0.12),
                          borderRadius: BorderRadius.circular(
                            SizeExtension(25).r,
                          ),
                        ),
                        padding: EdgeInsets.only(left: SizeExtension(22).w),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.lightbulb,
                              color: MyColors.white,
                              size: 26.sp,
                            ),
                            SizedBox(width: SizeExtension(12).w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Room Light',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    // ignore: deprecated_member_use
                                    color: MyColors.white.withOpacity(0.7),
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -1,
                                  ),
                                ),
                                Text(
                                  '64%',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    color: MyColors.white,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
