import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:musaliarapp/home_page_widgets/header_widget.dart';
import 'package:musaliarapp/pages/Testimonals/testimonial.dart';
import 'package:musaliarapp/pages/departments/cs_dept/dep_landing_page.dart';
import 'package:musaliarapp/pages/departments/ece_dep/dep_landing_page.dart';
import 'package:musaliarapp/pages/departments/eee_dept/dep_landing_page.dart';
import 'package:musaliarapp/pages/departments/mba_dept/dep_landing_page.dart';
import 'package:musaliarapp/pages/departments/mca_deparment/dep_landing_page.dart';
import 'package:musaliarapp/pages/departments/civil_dep/dep_landing_page.dart';
import 'package:musaliarapp/pages/departments/mech_dep/dep_landing_page.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';
import 'package:musaliarapp/widgets/college_things.dart';
import 'package:musaliarapp/widgets/big_widget.dart';
import 'package:musaliarapp/widgets/savings_card_widget.dart';
import 'package:musaliarapp/utils/colors.dart';
import 'package:musaliarapp/widgets_3/bottom_navigation_bar.dart';
import 'package:musaliarapp/widgets_3/s_custom_painter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/widgets_3/swipe_testimonail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  bool isMessages = true;
  int tabSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final candidates1 = SwipeTestimonail.getCandidates();
    final assetPaths1 = SwipeTestimonail.getAssetPaths();

    SwipeTestimonail.getCandidates();
    SwipeTestimonail.getAssetPaths();
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView(
              padding: EdgeInsets.only(
                top: SizeExtension(65).h,
                bottom: SizeExtension(20).h,
              ),
              children: [
                HeaderWidget(),
                SizedBox(height: SizeExtension(10).h),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeExtension(20).w,
                  ),
                  child: Text(
                    'Hey\nWelcome to Mcet App',
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: Theme.of(context).textTheme.titleLarge?.color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: SizeExtension(4).h),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeExtension(20).w,
                  ),
                  child: Text(
                    'Your Campus Companion!',
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Theme.of(context).textTheme.titleLarge?.color,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: SizeExtension(30).h),
                BigWidget(),
                SizedBox(height: SizeExtension(30).h),
                SizedBox(
                  height: SizeExtension(90).h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: SizeExtension(20).w),
                    children: List.generate(
                      5,
                      (index) => GestureDetector(
                        onTap: () {
                          vibrateIfEnabled(context);
                          if (kDebugMode) {
                            print('Tapped on circle ${index + 1}');
                          }
                        },
                        child: buildCircle('assets/images/3.jpg'),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: SizeExtension(30).h),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeExtension(20).w,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(SizeExtension(40).r),
                    child: Container(
                      height: SizeExtension(210).h,
                      width: double.infinity,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Theme.of(context).textTheme.titleLarge?.color,
                        border: Border.all(
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    vibrateIfEnabled(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CollegeThings(),
                                      ),
                                    );
                                  },
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
                                    color: const Color.fromARGB(
                                      255,
                                      69,
                                      142,
                                      80,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      SizeExtension(30).r,
                                    ),
                                  ),
                                  padding: EdgeInsets.all(SizeExtension(5).w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: SizeExtension(10).h),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: SizeExtension(10).w,
                                            ),
                                            child: Text(
                                              'NAAC\nNBA',
                                              style: TextStyle(
                                                fontSize: 17.sp,
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
                                              'Accreditations',
                                              style: TextStyle(
                                                fontSize: 15.sp,
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
                                          color: Theme.of(
                                            context,
                                          ).scaffoldBackgroundColor,
                                          borderRadius: BorderRadius.circular(
                                            SizeExtension(23).r,
                                          ),
                                        ),
                                        padding: EdgeInsets.only(
                                          left: SizeExtension(12).w,
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(
                                                SizeExtension(10).w,
                                              ),
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
                                                    color: const Color.fromARGB(
                                                      255,
                                                      237,
                                                      236,
                                                      236,
                                                      // ignore: deprecated_member_use
                                                    ).withOpacity(0.1),
                                                    blurRadius: SizeExtension(
                                                      5,
                                                    ).r,
                                                    spreadRadius: SizeExtension(
                                                      1,
                                                    ).r,
                                                  ),
                                                ],
                                              ),
                                              child: Icon(
                                                CupertinoIcons.book,
                                                color: const Color.fromRGBO(
                                                  138,
                                                  209,
                                                  103,
                                                  1,
                                                ),
                                                size: 18.sp,
                                              ),
                                            ),
                                            SizedBox(width: SizeExtension(9).w),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Overview',
                                                  style: TextStyle(
                                                    fontSize: 15.sp,
                                                    color: Theme.of(context)
                                                        .textTheme
                                                        .titleLarge
                                                        ?.color,
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: SizeExtension(30).h),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeExtension(20).w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Departments',
                        style: TextStyle(
                          fontSize: 19.sp,
                          color: Theme.of(context).textTheme.titleLarge?.color,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 19.sp,
                          color: Theme.of(context).textTheme.titleLarge?.color,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: SizeExtension(20).h),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeExtension(20).w,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            SavingsCardWidget(
                              text: 'Computer Science & Engineering',
                              amount: '---',
                              color: MyColors.orange,
                              percentage: 60,
                              onTap: () {
                                vibrateIfEnabled(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DepcsLandingPage(),
                                  ),
                                );
                              },
                            ),
                            //////////////////////////////////////////////////////////
                            SizedBox(height: SizeExtension(20).h),
                            SavingsCardWidget(
                              text: 'Mechanical Engineering',
                              amount: '---',
                              color: MyColors.lightYellow,
                              percentage: 56,
                              onTap: () {
                                vibrateIfEnabled(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DepmechLandingPage(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: SizeExtension(14).w),
                      Expanded(
                        child: Column(
                          children: [
                            SavingsCardWidget(
                              text: 'Civil Engineering',
                              amount: '---',
                              color: MyColors.green,
                              percentage: 68,
                              onTap: () {
                                vibrateIfEnabled(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DepcivilLandingPage(),
                                  ),
                                );
                              },
                            ),
                            SizedBox(height: SizeExtension(20).h),
                            SavingsCardWidget(
                              text: 'Electrical & Electronics Engineering',
                              amount: '---',
                              color: MyColors.purple,
                              percentage: 35,
                              onTap: () {
                                vibrateIfEnabled(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DepeeeLandingPage(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: SizeExtension(20).h),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeExtension(20).w,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            SavingsCardWidget(
                              text: 'Electronics & Communication Engineering',
                              amount: '---',
                              color: MyColors.orange,
                              percentage: 60,
                              onTap: () {
                                vibrateIfEnabled(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DepeceLandingPage(),
                                  ),
                                );
                              },
                            ),
                            SizedBox(height: SizeExtension(20).h),
                            SavingsCardWidget(
                              text: 'Masters of Computer Applications',
                              amount: '---',
                              color: MyColors.lightYellow,
                              percentage: 56,
                              onTap: () {
                                vibrateIfEnabled(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DepmcaLandingPage(),
                                  ),
                                );
                              },
                            ),
                            SizedBox(height: SizeExtension(20).h),
                            SavingsCardWidget(
                              text: 'Masters of Business Administration',
                              amount: '---',
                              color: MyColors.lightYellow,
                              percentage: 56,
                              onTap: () {
                                vibrateIfEnabled(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DepmbaLandingPage(),
                                  ),
                                );
                              },
                            ),
                            SizedBox(height: SizeExtension(20).h),
                            Container(
                              height: SizeExtension(380).h,
                              margin: EdgeInsets.symmetric(
                                horizontal: 0,
                                vertical: SizeExtension(10).h,
                              ),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          SizeExtension(40).r,
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          SizeExtension(40).r,
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned.fill(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: SizeExtension(.5).h,
                                                ),
                                                child: GestureDetector(
                                                  child: Image.asset(
                                                    'assets/images/11.jpg',
                                                    fit: BoxFit.cover,
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            Testimonial(
                                                              candidates:
                                                                  candidates1,
                                                              assetPaths:
                                                                  assetPaths1,
                                                              initialIndex: 1,
                                                            ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              bottom: SizeExtension(.5).h,
                                              left: 0,
                                              right: 0,
                                              child: Container(
                                                height: SizeExtension(200).h,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      MyColors
                                                          // ignore: deprecated_member_use
                                                          .Black.withOpacity(0),
                                                      MyColors
                                                          // ignore: deprecated_member_use
                                                          .Black.withOpacity(
                                                        0.3,
                                                      ),
                                                      MyColors
                                                          // ignore: deprecated_member_use
                                                          .Black.withOpacity(
                                                        0.5,
                                                      ),
                                                      MyColors
                                                          // ignore: deprecated_member_use
                                                          .Black.withOpacity(
                                                        0.85,
                                                      ),
                                                      MyColors.Black,
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: SizeExtension(30).w,
                                              bottom: SizeExtension(30).h,
                                              child: SizedBox(
                                                height: SizeExtension(210).h,
                                                width: SizeExtension(180).w,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Student\nTestimonials',
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                        fontSize: 25.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: MyColors.white,
                                                        height: 1.1,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: SizeExtension(
                                                        9,
                                                      ).h,
                                                    ),
                                                    SizedBox(
                                                      height: SizeExtension(
                                                        5,
                                                      ).h,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: SizeExtension(99.5).w,
                                    child: CustomPaint(
                                      size: Size(
                                        SizeExtension(40).w,
                                        SizeExtension(40).h,
                                      ),
                                      painter: SCustomPainter(
                                        fillColor: Theme.of(
                                          context,
                                        ).scaffoldBackgroundColor,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: SizeExtension(98).h,
                                    right: 0,
                                    child: CustomPaint(
                                      size: Size(
                                        SizeExtension(40).w,
                                        SizeExtension(40).h,
                                      ),
                                      painter: SCustomPainter(
                                        fillColor: Theme.of(
                                          context,
                                        ).scaffoldBackgroundColor,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      height: SizeExtension(100).h,
                                      width: SizeExtension(100).w,
                                      decoration: BoxDecoration(
                                        color: Theme.of(
                                          context,
                                        ).scaffoldBackgroundColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                            SizeExtension(70).r,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      height: SizeExtension(80).h,
                                      width: SizeExtension(80).w,
                                      decoration: BoxDecoration(
                                        color: Theme.of(
                                          context,
                                        ).textTheme.titleLarge?.color,
                                        borderRadius: BorderRadius.circular(
                                          SizeExtension(40).r,
                                        ),
                                      ),
                                      child: GestureDetector(
                                        child: Icon(
                                          CupertinoIcons.arrow_up_right,
                                          size: 30.sp,
                                          color: Theme.of(
                                            context,
                                          ).scaffoldBackgroundColor,
                                        ),

                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Testimonial(
                                                initialIndex: 1,
                                                candidates: candidates1,
                                                assetPaths: assetPaths1,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: SizeExtension(25).h),
                            Container(
                              height: SizeExtension(50).h,
                              margin: EdgeInsets.symmetric(
                                horizontal: 0,
                                vertical: SizeExtension(10).h,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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

  Widget buildCircle(String imagePath) {
    return Padding(
      padding: EdgeInsets.only(right: SizeExtension(10).w),
      child: Container(
        height: SizeExtension(90).h,
        width: SizeExtension(90).w,
        decoration: BoxDecoration(
          border: Border.all(
            color: MyColors.veryLightYellow,
            width: SizeExtension(2).w,
          ),
          borderRadius: BorderRadius.circular(SizeExtension(50).r),
        ),
        padding: EdgeInsets.all(SizeExtension(8).w),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(SizeExtension(41).r),
          child: Image.asset(imagePath, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
