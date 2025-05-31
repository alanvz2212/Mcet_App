import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/pages/departments/cs_dept/dep_home_page.dart';
import 'package:musaliarapp/utils/colors.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';

class DepcsLandingPage extends StatelessWidget {
  const DepcsLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          // Background Image
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
                  MaterialPageRoute(builder: (context) => DepcsHomePage()),
                );
              },
              child: Image.asset(
                'assets/images/imac-1999642.png',
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 🔙 Back Arrow Button at the top
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
                  size: 24.sp,
                ),
              ),
            ),
          ),

          // Main Text Content
          Positioned(
            top: 80.h,
            left: 20.w,
            right: 20.w,
            child: Column(
              children: [
                SizedBox(height: 50.h),
                Text(
                  'Welcome to ',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: MyColors.blue,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Computer Science',
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    letterSpacing: -0.2,
                    height: 1,
                  ),
                ),
                Text(
                  'Engineering',
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    letterSpacing: -0.2,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  'Code the logic, craft the future.\n'
                  'CSE empowers minds to engineer tomorrow',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    letterSpacing: -0.3,
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
