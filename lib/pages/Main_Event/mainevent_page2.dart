import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';

class MaineventPage2 extends StatelessWidget {
  const MaineventPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeExtension(0).w),
          child: Column(
            children: [
              Container(
                height: SizeExtension(360).h,
                width: double.infinity,
                padding: EdgeInsets.only(
                  top: SizeExtension(60).h,
                  left: SizeExtension(20).w,
                  right: SizeExtension(20).w,
                  bottom: SizeExtension(30).h,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(SizeExtension(40).r),
                    bottomRight: Radius.circular(SizeExtension(40).r),
                  ),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/musaliarapp_pic.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      child: GestureDetector(
                        onTap: () {
                          vibrateIfEnabled(context);
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(SizeExtension(11).w),
                          decoration: BoxDecoration(
                            color: Theme.of(
                              context,
                            ).textTheme.titleLarge?.color,
                            borderRadius: BorderRadius.circular(
                              SizeExtension(40).r,
                            ),
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
              ),
              SizedBox(height: SizeExtension(2).h),
              SizedBox(
                height: SizeExtension(607).h,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          imageBox(
                            'assets/images/avishkar/2.webp',
                            SizeExtension(160).h,
                          ),
                          SizedBox(height: SizeExtension(2).h),
                          imageBox(
                            'assets/images/avishkar/fire.webp',
                            SizeExtension(220).h,
                          ),
                          SizedBox(height: SizeExtension(2).h),
                          imageBox(
                            'assets/images/avishkar/2.jpg',
                            SizeExtension(220).h,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: SizeExtension(2).w),
                    Expanded(
                      child: Column(
                        children: [
                          imageBox(
                            'assets/images/avishkar/1.jpg',
                            SizeExtension(230).h,
                          ),
                          SizedBox(height: SizeExtension(2).h),
                          imageBox(
                            'assets/images/avishkar/dance_group.webp',
                            SizeExtension(373).h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeExtension(696).h,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          imageBox(
                            'assets/images/Activity Dance.JPG',
                            SizeExtension(230).h,
                          ),
                          SizedBox(height: SizeExtension(2).h),
                          imageBox(
                            'assets/images/Convocation.JPG',
                            SizeExtension(230).h,
                          ),
                          SizedBox(height: SizeExtension(2).h),
                          imageBox(
                            'assets/images/onam2.webp',
                            SizeExtension(230).h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeExtension(610).h,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          imageBox('name', SizeExtension(160).h),
                          SizedBox(height: SizeExtension(2).h),
                          imageBox('name', SizeExtension(220).h),
                          SizedBox(height: SizeExtension(2).h),
                          imageBox('name', SizeExtension(220).h),
                        ],
                      ),
                    ),
                    SizedBox(width: SizeExtension(2).w),
                    Expanded(
                      child: Column(
                        children: [
                          imageBox('name', SizeExtension(230).h),
                          SizedBox(height: SizeExtension(2).h),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              SizeExtension(40).r,
                            ),
                            child: SizedBox(
                              height: SizeExtension(373).h,
                              width: double.infinity,
                              child: Image.asset(
                                'assets/images/avishkar/xmas2.jpg',
                                fit: BoxFit.cover,
                              ),
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
    );
  }

  Widget imageBox(String path, double height) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(SizeExtension(40).r),
      child: Container(
        height: height,
        width: double.infinity,
        color: Colors.transparent,
        child: Image.asset(path, fit: BoxFit.cover),
      ),
    );
  }
}
