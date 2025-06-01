import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';

class DepeceHomePage extends StatelessWidget {
  const DepeceHomePage({super.key});

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
                SizedBox(height: 100.h),
                Text(
                  'Department of Electronics\n                      &',
                  style: TextStyle(
                    fontSize: 28.sp,
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Communication Engineering',
                  style: TextStyle(
                    fontSize: 27.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15.h),
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
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.titleLarge?.color,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'The Department of Electronics and Communication Engineering offers B.Tech and M.Tech programs in VLSI & Embedded Systems. Committed to innovation and practical learning, the expert faculty provides a strong foundation in electronics, communication, and specialized fields, preparing students for successful careers in industry, research, and academia.',
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).textTheme.titleLarge?.color,
                  ),
                ),
                SizedBox(height: 35.h),
                Text(
                  'Faculties Mail ID',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  height: 420.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildPersonTile(
                        name: 'vinodc@musaliarcollege.com',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'jaypees03@gmail.com',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'lijeshece@musaliarcollege.com',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'aneeshsamuel@gmail.com',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'sonaaak@gmail.com',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'vishnuuu.raj@gmail.com',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'asha.s.john@gmail.com',
                        context: context,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Workshops Conducted',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15.h),
                CollectionsWidget(assetPath: 'assets/images/ec_workshop.jpg'),
                SizedBox(height: 10.h),
                CollectionsWidget(assetPath: ''),
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

Widget buildPersonTile({required BuildContext context, required String name}) {
  return Container(
    height: 50.h,
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
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
