import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Make sure this is imported
import 'package:musaliarapp/pages/departments/civil_dep/dep_home_page.dart';
import 'package:musaliarapp/utils/colors.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';

class DepcivilLandingPage extends StatelessWidget {
  const DepcivilLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          Positioned(
            bottom: -10.h,
            height: 460.h,
            left: -10.w,
            right: 0,
            child: GestureDetector(
              onTap: () {
                vibrateIfEnabled(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DepcivilHomePage()),
                );
              },
              child: Image.asset(
                'assets/images/building-8734284_1920.png',
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 60.h,
            left: 20.w,
            child: GestureDetector(
              onTap: () {
                vibrateIfEnabled(context);
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.only(
                  left: 11.w,
                  right: 12.w,
                  top: 11.h,
                  bottom: 11.h,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).textTheme.titleLarge?.color,
                  borderRadius: BorderRadius.circular(40.r),
                ),
                child: Icon(
                  CupertinoIcons.chevron_back,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
            ),
          ),
          Positioned(
            top: 80.h,
            left: 20.w,
            right: 20.w,
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 45.h,
                        width: 45.w,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0.h,
                              right: 0.w,
                              child: SizedBox(height: 12.h, width: 12.w),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20.w),
                      SizedBox(height: 50.h, width: 50.w),
                    ],
                  ),
                ),
                Text(
                  'Welcome to ',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.w,
                    color: MyColors.blue,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Civil Engineering',
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    letterSpacing: -0.2.w,
                    height: 1.h,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  'Design the structure, build the legacy.\nCivil Engineering lays the foundation for tomorrow’s world.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    letterSpacing: -0.3.w,
                  ),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
