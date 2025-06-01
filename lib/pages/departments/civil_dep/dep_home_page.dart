import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';

class DepcivilHomePage extends StatelessWidget {
  const DepcivilHomePage({super.key});

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
                  'Department of Civil Engineering',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    fontSize: 30.sp,
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
                  'The Department of Civil Engineering, established in 2004, offers quality education with experienced faculty and NAAC accreditation. It provides industry-linked activities, well-equipped labs, consultancy services, and strong student involvement in professional bodies, fostering technical skills, leadership, and sustainable engineering practices.',
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
                        name: 'bushrasheik@gmail.com',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'manju.nandakumar@gmail.com',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'nisha@musaliarcollege.com',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'ciby.mcet@gmail.com',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'ashbgm786@gmail.com',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'jissmoljames1998@gmail.com',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'lnair06@gmail.com',
                        context: context,
                      ),
                      buildPersonTile(name: '--', context: context),
                      buildPersonTile(
                        name: 'arathirhpd@gmail.com',
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
                CollectionsWidget(
                  assetPath: 'assets/images/civil_workshop.jpg',
                ),
                SizedBox(height: 10.h),
                CollectionsWidget(
                  assetPath: 'assets/images/civil2_workshop.jpg',
                ),
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
