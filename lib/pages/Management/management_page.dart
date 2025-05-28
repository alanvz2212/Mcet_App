
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/pages/Management/chairman_details.dart';
import 'package:musaliarapp/pages/Management/principal_details.dart';
import 'package:musaliarapp/widgets_3/bottom_navigation_bar.dart';

class ManagementPage extends StatefulWidget {
  const ManagementPage({super.key});

  @override
  State<ManagementPage> createState() => _ManagementPageState();
}

class _ManagementPageState extends State<ManagementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: SizeExtension(170).h,
                  padding: EdgeInsets.only(top: SizeExtension(40).h, bottom: SizeExtension(40).h),
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(SizeExtension(40).r),
                      bottomRight: Radius.circular(SizeExtension(40).r),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: SizeExtension(22).w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: SizeExtension(44).h),
                            ),
                            SizedBox(width: SizeExtension(96).w),
                            Text(
                              'Management',
                              style: TextStyle(
                                color:
                                    Theme.of(
                                      context,
                                    ).textTheme.titleLarge?.color,
                                fontSize: 28.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: SizeExtension(2).h),
                Container(
                  height: SizeExtension(300).h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(SizeExtension(40).r),
                  ),
                  padding: EdgeInsets.only(top: SizeExtension(10).h, left: SizeExtension(20).w, right: SizeExtension(20).w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: SizeExtension(8).h),
                        child: Text(
                          'Chairman & Principal',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            color:
                                Theme.of(context).textTheme.titleLarge?.color,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ChairmanDetails(),
                            ),
                          );
                        },
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: SizeExtension(12).w,
                            vertical: SizeExtension(8).h,
                          ),
                          leading: Image.asset(
                            'assets/images/chairman.jpg',
                            width: SizeExtension(60).w,
                            height: SizeExtension(60).h,
                            fit: BoxFit.cover,
                          ),
                          title: Text(
                            'Mr. P I Sherif Muhammed',
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.titleLarge?.color,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: Text(
                            'Chairman',
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.titleLarge?.color,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color:
                                Theme.of(context).textTheme.titleLarge?.color,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(SizeExtension(12).r),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => PrincipalDetails(),
                            ),
                          );
                        },
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: SizeExtension(12).w,
                            vertical: SizeExtension(25).h,
                          ),
                          leading: Image.asset(
                            'assets/images/principal.jpg',
                            width: SizeExtension(60).w,
                            height: SizeExtension(60).h,
                            fit: BoxFit.fitHeight,
                          ),
                          title: Text(
                            'Dr. Priya G Das',
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.titleLarge?.color,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: Text(
                            'Principal',
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.titleLarge?.color,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 20.sp,
                            color:
                                Theme.of(context).textTheme.titleLarge?.color,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(SizeExtension(12).r),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: SizeExtension(2).h),
                Container(
                  height: SizeExtension(730).h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(SizeExtension(40).r),
                  ),
                  padding: EdgeInsets.only(top: SizeExtension(30).h, left: SizeExtension(20).w, right: SizeExtension(20).w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: SizeExtension(8).h),
                        child: Text(
                          'Trust',
                          style: TextStyle(
                            color:
                                Theme.of(context).textTheme.titleLarge?.color,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      buildPersonTile(
                        image: 'assets/images/chairman.jpg',
                        name: 'Mr. P I Sherif Muhammed',
                        subtitle: 'Chairman',
                        context: context,
                      ),
                      buildPersonTile(
                        image: 'assets/images/trust/Ibrahim-Kutty.jpg',
                        name: 'Mr. M Ibrahim Kutty IFS',
                        subtitle: 'General Secretary',
                        context: context,
                      ),
                      buildPersonTile(
                        image: 'assets/images/trust/habbeb.jpg',
                        name: 'Mr. P I Habeeb Muhammed',
                        subtitle: 'Treasurer',
                        context: context,
                      ),
                      buildPersonTile(
                        image: 'assets/images/trust/Zw.webp',
                        name: 'Dr Chand Basha IFS',
                        subtitle: 'Vice Chairman',
                        context: context,
                      ),
                      buildPersonTile(
                        image: 'assets/images/trust/isafeer.jpg',
                        name: 'Mr I Safeer',
                        subtitle: 'Trustee',
                        context: context,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 10,
            left: 30,
            right: 30,
            child: BottomNavigationBarWidget(),
          ),
        ],
      ),
    );
  }
}

Widget buildPersonTile({
  required BuildContext context,
  required String image,
  required String name,
  required String subtitle,
  Icon? icon,
}) {
  return Container(
    height: SizeExtension(100).h,
    margin: EdgeInsets.only(bottom: SizeExtension(10).h),
    child: Row(
      children: [
        SizedBox(
          height: SizeExtension(100).h,
          width: SizeExtension(100).w,
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(SizeExtension(50).r),
                  ),
                  padding: EdgeInsets.all(SizeExtension(18).r),
                  child: Image.asset(image, fit: BoxFit.contain),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: SizeExtension(15).w),
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
              SizedBox(height: SizeExtension(4).h),
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
