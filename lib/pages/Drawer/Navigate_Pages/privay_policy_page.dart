import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/utils/colors.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';

class PrivayPolicyPage extends StatelessWidget {
  const PrivayPolicyPage({super.key});

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
              'Privacy Policy',
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
                        '1. Information We Collect\n\n'
                        'We collect only essential information necessary'
                        'for the app’s functionality. No personal data is'
                        'collected without your explicit consent.\n\n'
                        '2. Usage Data\n\n'
                        'Anonymous usage data may be collected to help improve app performance and user experience.\n\n'
                        '3. Data Security\n\n'
                        'We employ industry-standard security measures to protect your data from unauthorized access.\n\n'
                        '4. Third-Party Services\n\n'
                        'This app may use third-party services (like analytics) which have their own privacy policies.\n\n'
                        '5. Data Sharing\n\n'
                        'We do not sell, trade, or share your personal information with third parties.\n\n'
                        '6. Your Rights\n\n'
                        'You may choose to limit the information you share and can contact us regarding your data at any time.\n\n'
                        '7. Policy Updates\n\n'
                        'We may update this privacy policy occasionally. Continued use of the app means you accept those changes.\n\n',
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
