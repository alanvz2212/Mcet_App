import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musaliarapp/utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';

class DepcsHomePage extends StatelessWidget {
  const DepcsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ListView(
              children: [
                SizedBox(height: 80.h),
                SizedBox(height: 40.h),
                Text(
                  'Department of Computer Science & Engineering',
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 35.h),
                Container(
                  height: 1.7.h,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 1.w),
                  decoration: BoxDecoration(
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                ),
                SizedBox(height: 35.h),
                Text(
                  'About the Department',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SecondaSoft',
                    color: Theme.of(context).textTheme.titleLarge?.color,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'The Department of Computer Science and Engineering, established in 2002, offers B.Tech and M.Tech programs with NAAC accreditation. It provides excellent infrastructure, experienced faculty, and well-equipped labs. The department focuses on industry-relevant skills, teamwork, and research, preparing students for successful IT careers.',
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SecondaSoft',
                    color: MyColors.blue,
                  ),
                ),
                SizedBox(height: 35.h),
                Text(
                  'Here are the Faculty Members',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SecondaSoft',
                  ),
                ),
                Container(
                  height: 550.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildPersonTile(
                        name: 'Dr Shine Raj G (HOD)',
                        subtitle: 'igshiner@gmail.com',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'Ms Harsha Pushpan',
                        subtitle: 'harshapushpan19@gmail.com',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'Ms Athira B',
                        subtitle: '',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'Ms Rajeena Rahman',
                        subtitle: 'rinsa.rees@gmail.com',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'Ms Preethi Thomas',
                        subtitle: '',
                        context: context,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                Text(
                  'WORKSHOPS CONDUCTED',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'SecondaSoft',
                  ),
                ),
                SizedBox(height: 15.h),
                CollectionsWidget(assetPath: 'assets/images/cs_workshop.jpg'),
                SizedBox(height: 10.h),
                CollectionsWidget(assetPath: 'assets/images/cs2_worshop.jpg'),
                SizedBox(height: 30.h),
              ],
            ),
          ),
          Positioned(
            top: 62.h,
            left: 20.w,
            child: GestureDetector(
              onTap: () {
                vibrateIfEnabled(context);
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(11.r),
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
        ],
      ),
    );
  }
}

class CollectionsWidget extends StatelessWidget {
  final String assetPath;
  const CollectionsWidget({required this.assetPath, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 1.w),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: Image.asset(assetPath, fit: BoxFit.cover),
      ),
    );
  }
}

Widget buildPersonTile({
  required BuildContext context,
  required String name,
  required String subtitle,
  Icon? icon,
}) {
  return Container(
    height: 100.h,
    margin: EdgeInsets.only(bottom: 10.h),
    child: Row(
      children: [
        SizedBox(
          height: 100.h,
          width: 0.w,
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  padding: EdgeInsets.all(18.r),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 15.w),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  color: Theme.of(context).textTheme.titleLarge?.color,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                subtitle,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  color: Theme.of(context).textTheme.titleLarge?.color,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        if (icon != null) icon,
      ],
    ),
  );
}
