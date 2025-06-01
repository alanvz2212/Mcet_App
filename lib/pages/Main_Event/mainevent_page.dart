import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/pages/Main_Event/mainevent_page2.dart';
import 'package:musaliarapp/utils/colors.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';
import 'package:musaliarapp/widgets/bottom_navigation_bar.dart';

class MaineventPage extends StatefulWidget {
  const MaineventPage({super.key});

  @override
  State<MaineventPage> createState() => _MaineventPageState();
}

class _MaineventPageState extends State<MaineventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeExtension(30).w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(height: SizeExtension(90).h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Event Zone',
                          style: TextStyle(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: SizeExtension(5).h),
                    Text(
                      '',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: SizeExtension(5).h),
                Expanded(
                  child: Stack(
                    children: [
                      Positioned(
                        top: SizeExtension(5).h,
                        left: SizeExtension(15).w,
                        child: Transform.rotate(
                          angle: -0.12,
                          child: Container(
                            height: SizeExtension(320).h,
                            width: SizeExtension(220).w,
                            decoration: BoxDecoration(
                              color: MyColors.teal,
                              borderRadius: BorderRadius.circular(
                                SizeExtension(35).r,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                SizeExtension(35).r,
                              ),
                              child: Image.asset(
                                'assets/images/1.webp',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: SizeExtension(5).h,
                        right: SizeExtension(20).w,
                        child: Transform.rotate(
                          angle: 0.15,
                          child: Container(
                            height: SizeExtension(350).h,
                            width: SizeExtension(250).w,
                            decoration: BoxDecoration(
                              color: MyColors.blue,
                              borderRadius: BorderRadius.circular(
                                SizeExtension(35).r,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                SizeExtension(35).r,
                              ),
                              child: Image.asset(
                                'assets/images/2.webp',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    vibrateIfEnabled(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MaineventPage2(),
                      ),
                    );
                  },
                  child: Container(
                    width: SizeExtension(90).w,
                    height: SizeExtension(90).h,
                    padding: EdgeInsets.all(SizeExtension(15).w),
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(SizeExtension(50).r),
                      border: Border.all(
                        color: Theme.of(context).disabledColor,
                        width: SizeExtension(1.5).w,
                      ),
                    ),
                    child: Container(
                      width: SizeExtension(60).w,
                      height: SizeExtension(60).h,
                      decoration: BoxDecoration(
                        color: Theme.of(context).textTheme.titleLarge?.color,
                        borderRadius: BorderRadius.circular(
                          SizeExtension(50).r,
                        ),
                        border: Border.all(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          width: SizeExtension(1.5).w,
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Theme.of(context).scaffoldBackgroundColor,
                        size: 20.sp,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: SizeExtension(120).h),
              ],
            ),
          ),
          Positioned(
            bottom: SizeExtension(10).h,
            left: SizeExtension(30).w,
            right: SizeExtension(30).w,
            child: BottomNavigationBarWidget(),
          ),
        ],
      ),
    );
  }
}
