
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';


class ChairmanDetails extends StatelessWidget {
  const ChairmanDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).textTheme.titleLarge?.color,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: SizedBox(
              height: 0.6.sh,
              child: Image.asset(
                'assets/images/chairman.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: SizeExtension(58).h,
            left: SizeExtension(20).w,
            child: Container(
              padding: EdgeInsets.all(SizeExtension(10).r),
              decoration: BoxDecoration(
                color: Theme.of(context).textTheme.titleLarge?.color,
                borderRadius: BorderRadius.circular(SizeExtension(40).r),
              ),
              child: GestureDetector(
                child: Icon(
                  CupertinoIcons.chevron_back,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  size: 24.sp,
                ),
                onTap: () {
                  vibrateIfEnabled(context);
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.45,
            minChildSize: 0.45,
            maxChildSize: 0.9,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(SizeExtension(20).r),
                    topRight: Radius.circular(SizeExtension(20).r),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: SizeExtension(20).w, vertical: SizeExtension(20).h),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'CHAIRMAN',
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.titleLarge?.color,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_up,
                            color:
                                Theme.of(context).textTheme.titleLarge?.color,
                            size: 40.sp,
                          ),
                        ],
                      ),
                      SizedBox(height: SizeExtension(20).h),
                      Divider(
                        color: Theme.of(context).textTheme.titleLarge?.color,
                        height: SizeExtension(4).h,
                      ),
                      SizedBox(height: SizeExtension(20).h),
                      Text(
                        'Sri P I Sherief Mohammed',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.titleLarge?.color,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                      SizedBox(height: SizeExtension(20).h),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'About Chairman\n\n',
                              style: TextStyle(
                                color:
                                    Theme.of(
                                      context,
                                    ).textTheme.titleLarge?.color,
                                fontSize: 20.sp,
                                fontFamily: 'Elmessiri',
                                fontWeight: FontWeight.bold,
                                height: 1.2,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'Former Government of Kerala officer, \nShri P I Sherief Mohammed, is the President of Ramakrishna Ashram, Pathanamthitta, and Secretary of Bharatiya Vidya Bhavan, Pathanamthitta. He also serves as Senior Vice President of the Kerala Handball Association and Executive Member of the District Olympic Association. He has represented India internationally to promote Sanatana Dharma.\n\n',
                              style: TextStyle(
                                color:
                                    Theme.of(
                                      context,
                                    ).textTheme.titleLarge?.color,
                                fontSize: 18.sp,
                                fontFamily: 'Elmessiri',
                                fontWeight: FontWeight.w400,
                                height: 1.2,
                              ),
                            ),
                            TextSpan(
                              text: 'Chairman\'s Message\n\n',
                              style: TextStyle(
                                color:
                                    Theme.of(
                                      context,
                                    ).textTheme.titleLarge?.color,
                                fontSize: 20.sp,
                                fontFamily: 'Elmessiri',
                                fontWeight: FontWeight.bold,
                                height: 1.2,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'At Musaliar College of Engineering and Technology, we focus on the holistic growth of students in a nature-friendly campus. We encourage innovation, sustainable solutions, and pluralism. As early adopters of startup culture, we now offer next-gen courses like AI, ML, IoT, and Blockchain. We proudly partner with the Government of Kerala for skill development. We aim to be a centre of excellence for future generations.',
                              style: TextStyle(
                                color:
                                    Theme.of(
                                      context,
                                    ).textTheme.titleLarge?.color,
                                fontSize: 18.sp,
                                fontFamily: 'Elmessiri',
                                fontWeight: FontWeight.w400,
                                height: 1.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
