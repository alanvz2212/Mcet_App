import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';

class TermsPage extends StatefulWidget {
  const TermsPage({super.key});

  @override
  State<TermsPage> createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> {
  bool isFavourite = false;
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
                    padding: EdgeInsets.only(
                      left: SizeExtension(11).w,
                      right: SizeExtension(12).w,
                      top: SizeExtension(11).h,
                      bottom: SizeExtension(11).h,
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
              'Terms and conditions',
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
                        '1. Introduction\n\n'
                        'This mobile application is developed by Musaliar College of'
                        ' Engineering and Technology (musaliarapp) to provide information about the college, '
                        'its departments, events, and facilities. By using this app, you agree to the following terms.\n\n'
                        '2. Purpose\n\n'
                        'The app is designed for informational and educational purposes only.'
                        'It allows users to explore the college, its courses, infrastructure, and other resources.\n\n'
                        '3. No Registration Required\n\n'
                        'This app does not require login or signup. All users can freely browse the available content.\n\n'
                        '4. Usage\n\n'
                        'Users are expected to use the app responsibly. Any misuse, unauthorized sharing, or modification of the app content is not allowed.\n\n'
                        '5. Content Ownership\n\n'
                        'All images, text, logos, and data presented in the app belong to musaliarapp. They may not be reused or reproduced without written permission from the college.\n\n'
                        '6. App Updates\n\n'
                        'We may occasionally update the app to improve its features or fix issues. Users are encouraged to keep the app updated for the best experience.\n\n'
                        '7. Limitation of Liability\n\n'
                        'While we strive for accuracy, musaliarapp is not responsible for any errors or outdated information in the app.',
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
