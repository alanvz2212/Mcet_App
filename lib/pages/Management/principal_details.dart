import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';

class PrincipalDetails extends StatelessWidget {
  const PrincipalDetails({super.key});

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
                'assets/images/principal.jpg',
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
                padding: EdgeInsets.symmetric(
                  horizontal: SizeExtension(20).w,
                  vertical: SizeExtension(20).h,
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'PRINCIPAL',
                            style: TextStyle(
                              color: Theme.of(
                                context,
                              ).textTheme.titleLarge?.color,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_up,
                            color: Theme.of(
                              context,
                            ).textTheme.titleLarge?.color,
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
                        'Dr. Priya G Das',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.titleLarge?.color,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                      SizedBox(height: SizeExtension(20).h),
                      Padding(
                        padding: EdgeInsets.only(right: SizeExtension(25).w),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              _sectionTitle(context, 'About Principal\n\n'),
                              _sectionBody(
                                context,
                                'Dr. Priya G Das is a seasoned academic with 30+ years in Electrical & Electronics Engineering. '
                                'She holds a B.Tech from Kerala University, ME in Control Systems from Bharatiyar University, '
                                'and a PhD in Aerospace Engineering from IISc Bangalore. She retired as HoD at NSS Engineering '
                                'College, Palakkad.\n\n',
                              ),
                              _sectionTitle(
                                context,
                                'Research & Publications\n\n',
                              ),
                              _sectionBody(
                                context,
                                'She has published 25+ papers in national and international journals. A KTU-approved research '
                                'supervisor, her interests include control systems, electric vehicles, neural networks, fuzzy logic, '
                                'and optimization techniques.\n\n',
                              ),
                              _sectionTitle(
                                context,
                                'Technical Memberships\n\n',
                              ),
                              _sectionBody(
                                context,
                                'Life Member of ISTE and Institution of Engineers (India). She received the Best Paper Award '
                                '(ACCODS 2007) and was appreciated as SPOC of the NPTEL local chapter (A-rated).\n\n',
                              ),
                              _sectionTitle(context, 'Education\n\n'),
                              _sectionBody(
                                context,
                                'PhD – IISc Bangalore (2010).\n'
                                'ME – Bharatiyar University (1999).\n'
                                'B.Tech – Kerala University (1988).\n\n',
                              ),
                              _sectionTitle(context, 'Experience\n\n'),
                              _sectionBody(
                                context,
                                'From Lecturer (1992) to HoD, she has held various academic and leadership roles, contributing '
                                'to curriculum design, department accreditation, and research supervision.',
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: SizeExtension(25).h),
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

  TextSpan _sectionTitle(BuildContext context, String text) {
    return TextSpan(
      text: text,
      style: TextStyle(
        color: Theme.of(context).textTheme.titleLarge?.color,
        fontSize: 20.sp,
        fontFamily: 'Elmessiri',
        fontWeight: FontWeight.bold,
        height: 1.2,
      ),
    );
  }

  TextSpan _sectionBody(BuildContext context, String text) {
    return TextSpan(
      text: text,
      style: TextStyle(
        color: Theme.of(context).textTheme.titleLarge?.color,
        fontSize: 18.sp,
        fontFamily: 'Elmessiri',
        fontWeight: FontWeight.w400,
        height: 1.2,
      ),
    );
  }
}
