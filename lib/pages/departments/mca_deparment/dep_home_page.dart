import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musaliarapp/utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';

class DepmcaHomePage extends StatelessWidget {
  const DepmcaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                SizedBox(height: 80),
                SizedBox(height: 40),
                Text(
                  'Department of MCA',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 35),
                Container(
                  height: 1.7,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 1),
                  decoration: BoxDecoration(
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                const SizedBox(height: 35),
                Text(
                  'About the Department',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SecondaSoft',
                    color: Theme.of(context).textTheme.titleLarge?.color,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Established in 2011, the MCA department at MCET offers a four-semester program approved by APJ Abdul Kalam Technological University and AICTE. It emphasizes industry-relevant training through theory, practicals, live projects, seminars, and workshops. The department nurtures software skills with expert guidance, high-end technologies, and active industry-academia interaction.',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SecondaSoft',
                    color: MyColors.blue,
                  ),
                ),
                const SizedBox(height: 35),
                Text(
                  'Here are the Faculty Members',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SecondaSoft',
                  ),
                ),
                Container(
                  height: SizeExtension(550).h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(SizeExtension(40).r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildPersonTile(
                        name: 'Ms Shyma Kareem (HOD)',
                        subtitle: 'shymshiju@gmail.com',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'Ms Jogimol Joseph',
                        subtitle: 'jogimolb@gmail.com',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'Ms Sindhu Daniel',
                        subtitle: 'sindhudaniel@yahoo.com',
                        context: context,
                      ),
                      buildPersonTile(
                        name: 'Ms Rinsa Rees',
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
                Text(
                  'WORKSHOPS CONDUCTED',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'SecondaSoft',
                  ),
                ),
                const SizedBox(height: 15),

                CollectionsWidget(
                  assetPath: 'assets/images/sindhu_mis_workshop.jpg',
                ),
                const SizedBox(height: 10),
                CollectionsWidget(assetPath: 'assets/images/5.jpg'),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Positioned(
            top: 62,
            left: 20,
            child: GestureDetector(
              onTap: () {
                vibrateIfEnabled(context);
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(11),
                decoration: BoxDecoration(
                  color: Theme.of(context).textTheme.titleLarge?.color,
                  borderRadius: BorderRadius.circular(40),
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
      height: 200,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 1),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
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
    height: SizeExtension(100).h,
    margin: EdgeInsets.only(bottom: SizeExtension(10).h),
    child: Row(
      children: [
        SizedBox(
          height: SizeExtension(100).h,
          width: SizeExtension(0).w,
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(SizeExtension(50).r),
                  ),
                  padding: EdgeInsets.all(SizeExtension(18).r),
                  // child: Image.asset(image, fit: BoxFit.contain),
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
