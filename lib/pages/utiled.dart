import 'package:flutter/material.dart';
import 'package:musaliarapp/utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DepcivilHomePage extends StatelessWidget {
  const DepcivilHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          padding: const EdgeInsets.only(bottom: 50),
          children: [
            const SizedBox(height: 80),
            const SizedBox(height: 40),
            Container(
              height: 10,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Text(
              'Department of Civil Engineering',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 35),
            Container(
              height: 1.7,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 1),
              decoration: BoxDecoration(
                // ignore: deprecated_member_use
                color: Theme.of(context).textTheme.titleLarge?.color,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            const SizedBox(height: 35),
            Text(
              'ABOUT THE DEPARTMENT',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: 'SecondaSoft',
                color: MyColors.grey,
              ),
            ),
            const SizedBox(height: 11),
            Text(
              'Department of Civil Engineering -\n'
              'Musaliar College '
              'Established in 2004, the Civil Engineering '
              'Department at Musaliar College focuses on '
              'producing skilled, industry-ready engineers.'
              'With experienced faculty, modern labs, and '
              'NAAC accreditation, it blends academics with '
              'hands-on training through site visits, expert '
              'talks, and consultancy. Students benefit '
              'from Outcome Based Education, active '
              'professional memberships, and opportunities '
              'for higher studies and leadership roles. The '
              'department also offers strong industry connections '
              'and houses a dedicated library to support academic growth.',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                fontFamily: 'SecondaSoft',
                color: MyColors.blue,
              ),
            ),
            const SizedBox(height: 35),
            Text(
              'Here are the Faculty Members.',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                fontFamily: 'SecondaSoft',
              ),
            ),
            Container(
              height: SizeExtension(600).h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(SizeExtension(40).r),
              ),
              padding: EdgeInsets.only(top: SizeExtension(30).h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Padding(padding: EdgeInsets.only(bottom: SizeExtension(8).h)),
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
          ],
        ),
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
