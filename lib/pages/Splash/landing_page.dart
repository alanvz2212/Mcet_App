import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/pages/Home/home_page.dart';
import 'package:musaliarapp/utils/colors.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        _selectedIndex = (_selectedIndex + 1) % 3;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/pic2.jpg', fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 300),
              opacity: _selectedIndex == 1 ? 1 : 0,
              child: Image.asset('assets/images/colg.jpg', fit: BoxFit.cover),
            ),
          ),
          Positioned.fill(
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 300),
              opacity: _selectedIndex == 2 ? 1 : 0,
              child: Image.asset(
                'assets/images/college_3.JPG',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: SizeExtension(320).h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    MyColors.Black,
                    MyColors.Black,
                    // ignore: deprecated_member_use
                    MyColors.Black.withOpacity(0.9),
                    // ignore: deprecated_member_use
                    MyColors.Black.withOpacity(0.55),
                    // ignore: deprecated_member_use
                    MyColors.Black.withOpacity(0.0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.only(
                left: SizeExtension(20).w,
                bottom: SizeExtension(40).h,
                right: SizeExtension(20).w,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: SizeExtension(10).w,
                      right: SizeExtension(20).w,
                    ),
                    child: Text(
                      'Your dreams begin here, at Musaliar College.',
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: MyColors.white,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        height: SizeExtension(1.4).h,
                      ),
                    ),
                  ),
                  SizedBox(height: SizeExtension(40).h),
                  Padding(
                    padding: EdgeInsets.only(left: SizeExtension(10).w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: SizeExtension(115).w,
                          height: SizeExtension(3).h,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AnimatedContainer(
                                duration: Duration(milliseconds: 100),
                                width: _selectedIndex == 0
                                    ? SizeExtension(42).w
                                    : SizeExtension(27).w,
                                decoration: BoxDecoration(
                                  color: _selectedIndex == 0
                                      ? MyColors.white
                                      : MyColors.grey,
                                  borderRadius: BorderRadius.circular(
                                    SizeExtension(5).r,
                                  ),
                                ),
                              ),
                              SizedBox(width: SizeExtension(6).w),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 100),
                                width: _selectedIndex == 1
                                    ? SizeExtension(42).w
                                    : SizeExtension(27).w,
                                decoration: BoxDecoration(
                                  color: _selectedIndex == 1
                                      ? MyColors.white
                                      : MyColors.grey,
                                  borderRadius: BorderRadius.circular(
                                    SizeExtension(5).r,
                                  ),
                                ),
                              ),
                              SizedBox(width: SizeExtension(6).w),
                              AnimatedContainer(
                                duration: Duration(milliseconds: 100),
                                width: _selectedIndex == 2
                                    ? SizeExtension(42).w
                                    : SizeExtension(27).w,
                                decoration: BoxDecoration(
                                  color: _selectedIndex == 2
                                      ? MyColors.white
                                      : MyColors.grey,
                                  borderRadius: BorderRadius.circular(
                                    SizeExtension(5).r,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            vibrateIfEnabled(context);
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          child: SizedBox(
                            height: SizeExtension(90).h,
                            width: SizeExtension(155).w,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: SizeExtension(6).h,
                                  left: SizeExtension(2).w,
                                  right: SizeExtension(2).w,
                                  child: Transform.rotate(
                                    angle: 0.17,
                                    child: Container(
                                      height: SizeExtension(78).h,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                          255,
                                          255,
                                          255,
                                          255,
                                          // ignore: deprecated_member_use
                                        ).withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(
                                          SizeExtension(20).r,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: SizeExtension(6).h,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: SizeExtension(78).h,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                        255,
                                        255,
                                        255,
                                        255,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        SizeExtension(20).r,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Let\'s try!',
                                      style: TextStyle(
                                        color: const Color.fromARGB(
                                          255,
                                          0,
                                          0,
                                          0,
                                        ),
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: -.6,
                                      ),
                                    ),
                                  ),
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
        ],
      ),
    );
  }
}
