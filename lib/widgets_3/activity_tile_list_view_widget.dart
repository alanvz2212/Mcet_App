
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/models/activity_model.dart';
import 'package:musaliarapp/utils/colors.dart';

class ActivityTileListView extends StatefulWidget {
  const ActivityTileListView({super.key});

  @override
  State<ActivityTileListView> createState() => _ActivityTileListViewState();
}

class _ActivityTileListViewState extends State<ActivityTileListView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeExtension(65).h,
      child: ListView.builder(
        itemCount: ActivityModel.dummyList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final model = ActivityModel.dummyList[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 350),
              height: SizeExtension(60).h,
              margin: EdgeInsets.only(right: SizeExtension(15).w),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 0, 0),
                border:
                    _selectedIndex == index
                        ? Border.all(color: MyColors.Black, width: SizeExtension(1.1).w)
                        : null,
                borderRadius: BorderRadius.circular(SizeExtension(50).r),
              ),
              padding: EdgeInsets.only(
                left: SizeExtension(5).w,
                right: SizeExtension(22).w,
                top: SizeExtension(5).h,
                bottom: SizeExtension(5).h,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(SizeExtension(50).r),
                    ),
                    height: SizeExtension(66).h,
                    width: SizeExtension(53).w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(SizeExtension(50).r),
                      child: Image.asset(
                        'assets/images/3.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: SizeExtension(15).w),
                  Text(
                    model.name,
                    style: TextStyle(
                      color: MyColors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
