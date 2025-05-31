import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        padding: EdgeInsets.only(
          top: SizeExtension(70).h,
          bottom: SizeExtension(50).h,
        ),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeExtension(20).w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    vibrateIfEnabled(context);
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: SizeExtension(12).w,
                      vertical: SizeExtension(11).h,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).textTheme.titleLarge?.color,
                      borderRadius: BorderRadius.circular(SizeExtension(40).r),
                    ),
                    child: Icon(
                      CupertinoIcons.chevron_back,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      size: 20.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: SizeExtension(30).h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeExtension(20).w),
            child: Text(
              'About Us',
              style: TextStyle(
                fontSize: 34.sp,
                fontWeight: FontWeight.w800,
                height: 1.1,
              ),
            ),
          ),
          SizedBox(height: SizeExtension(30).h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeExtension(20).w),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(SizeExtension(10).r),
                  child: SizedBox(
                    width: SizeExtension(65).w,
                    height: SizeExtension(65).h,
                    child: Image.asset(
                      'assets/images/3.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: SizeExtension(15).w),
              ],
            ),
          ),
          SizedBox(height: SizeExtension(30).h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeExtension(20).w),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w300,
                  height: 1.2,
                  color: Theme.of(context).textTheme.titleLarge?.color,
                  fontFamily: 'Roboto',
                  letterSpacing: -0.1,
                ),
                children: [
                  TextSpan(
                    text:
                        'Musaliar College of Engineering and Technology (MCET), Pathanamthitta, is now just a tap away with the MCET Mobile Application. This app is designed to keep students, faculty, and staff well-informed and connected by providing easy access to essential college information and services. From getting in touch with the college to exploring detailed profiles of departments and faculty, users can also stay updated on workshops and upcoming events. Additionally, the app offers valuable insights into the college’s management and showcases testimonials from students and alumni. Featuring a user-friendly design and rich multimedia content, this app brings the full campus experience to your fingertips, supporting your academic journey every step of the way.',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
