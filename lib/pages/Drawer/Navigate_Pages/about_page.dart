import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/utils/colors.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        padding: EdgeInsets.only(
          top: SizeExtension(70).h,
          bottom: SizeExtension(50).h,
        ),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeExtension(20).w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    vibrateIfEnabled(context);
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(SizeExtension(11).r),
                    decoration: BoxDecoration(
                      color: Theme.of(context).textTheme.titleLarge?.color,
                      borderRadius: BorderRadius.circular(SizeExtension(40).r),
                    ),
                    child: Icon(
                      CupertinoIcons.chevron_back,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeExtension(300).h,
            child: ListView(
              padding: EdgeInsets.only(left: SizeExtension(15).w),
              scrollDirection: Axis.horizontal,
              children: [
                ClipRRect(
                  child: SizedBox(
                    width: SizeExtension(300).w,
                    child: Stack(
                      children: [
                        Positioned(
                          left: SizeExtension(30).w,
                          right: SizeExtension(10).w,
                          top: SizeExtension(10).h,
                          bottom: SizeExtension(20).h,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              SizeExtension(20).r,
                            ),
                            child: Image.asset(
                              'assets/images/23 Years of Excel.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 0,
                          child: SizedBox(
                            width: SizeExtension(70).w,
                            height: SizeExtension(70).h,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                SizeExtension(10).r,
                              ),
                              child: Image.asset('assets/images/3.jpg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: SizeExtension(200).w,
                  margin: EdgeInsets.fromLTRB(
                    SizeExtension(10).w,
                    SizeExtension(10).h,
                    SizeExtension(10).w,
                    SizeExtension(30).h,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            SizeExtension(20).r,
                          ),
                          child: Image.asset(
                            'assets/images/5 musaliarapp Logo.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: SizeExtension(20).h),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            SizeExtension(20).r,
                          ),
                          child: Image.asset(
                            'assets/images/KIRF.png',
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
          SizedBox(height: SizeExtension(30).h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeExtension(20).w),
            child: Text(
              'Musaliar College',
              style: TextStyle(
                fontSize: 34.sp,
                fontWeight: FontWeight.w800,
                height: 1.1,
              ),
            ),
          ),
          SizedBox(height: SizeExtension(30).h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeExtension(20).w),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(SizeExtension(10).r),
                  child: SizedBox(
                    width: SizeExtension(65).w,
                    height: SizeExtension(65).h,
                    child: Image.asset(
                      'assets/images/23 Years of Excel.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: SizeExtension(15).w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Since, 2002',
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                        height: 1.1,
                        color: MyColors.grey,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    SizedBox(height: SizeExtension(8).h),
                    Text(
                      'About Our Institution',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        height: 1.1,
                        fontFamily: 'Roboto',
                        letterSpacing: -.2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: SizeExtension(30).h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeExtension(20).w),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w300,
                  height: 1.2,
                  color: MyColors.grey,
                  fontFamily: 'Roboto',
                  letterSpacing: -.1,
                ),
                children: const [
                  TextSpan(
                    text:
                        'Musaliar College of Engineering and Technology (musaliarapp) '
                        'is a NAAC-accredited engineering and management institution '
                        'located in Pathanamthitta, India. The college is under the '
                        'renowned Musaliar Education Trust, a charitable trust founded '
                        'in 2001 by a group of well-settled educationalists and technocrats. '
                        'musaliarapp offers a wide range of undergraduate and postgraduate courses '
                        'in the fields of management, engineering, and technology, '
                        'including B.Tech in Computer Science Engineering, Electrical '
                        'and Electronics Engineering, Mechanical Engineering, Civil '
                        'Engineering, Electronics and Communication, Masters in VLSI '
                        '& Embedded Systems, Computer Science & Engineering, MBA and MCA. '
                        'The college also has a dedicated startup zone where students '
                        'can develop their entrepreneurial skills and turn their business '
                        'ideas into reality. The college has state-of-the-art infrastructure, '
                        'well-equipped laboratories, and a highly qualified and experienced '
                        'faculty. With a strong focus on industry-relevant education, '
                        'musaliarapp prepares students for successful careers in the engineering, '
                        'technology, and management sectors. Additionally, musaliarapp has '
                        'an Artificial Intelligence and Machine Learning Lab that is '
                        'equipped with state-of-the-art laboratory setup for learning '
                        'and researching the latest technology in these fields, preparing '
                        'students for successful careers in the field of AI and ML which is in high demand today.',
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
