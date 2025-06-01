import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/pages/Drawer/profile_tab.dart';
import 'package:musaliarapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeExtension(60).h,
      margin: EdgeInsets.symmetric(horizontal: SizeExtension(20).w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Material(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: InkWell(
              borderRadius: BorderRadius.circular(SizeExtension(10).r),
              onTap: () {
                vibrateIfEnabled(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileTab()),
                );
              },
              child: Container(
                width: SizeExtension(46).w,
                padding: EdgeInsets.symmetric(vertical: SizeExtension(16).h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: SizeExtension(3).h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Theme.of(context).textTheme.titleLarge?.color,
                        borderRadius: BorderRadius.circular(
                          SizeExtension(50).r,
                        ),
                      ),
                    ),
                    Container(
                      height: SizeExtension(3).h,
                      width: SizeExtension(32).w,
                      decoration: BoxDecoration(
                        color: Theme.of(context).textTheme.titleLarge?.color,
                        borderRadius: BorderRadius.circular(
                          SizeExtension(50).r,
                        ),
                      ),
                    ),
                    Container(
                      height: SizeExtension(3).h,
                      width: SizeExtension(18).w,
                      decoration: BoxDecoration(
                        color: Theme.of(context).textTheme.titleLarge?.color,
                        borderRadius: BorderRadius.circular(
                          SizeExtension(50).r,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Container(
            height: SizeExtension(50).h,
            width: SizeExtension(50).w,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                // ignore: deprecated_member_use
                colors: [MyColors.orange.withOpacity(.6), MyColors.orange],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(SizeExtension(20).r),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(SizeExtension(20).r),
              child: Image.asset('assets/images/3.jpg', fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
