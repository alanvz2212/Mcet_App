import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/bottom_nav_state.dart';
import 'package:musaliarapp/pages/Get_in_Touch/getintouch_page.dart';
import 'package:musaliarapp/pages/Main_Event/mainevent_page.dart';
import 'package:musaliarapp/pages/Management/management_page.dart';
import 'package:musaliarapp/utils/colors.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';
import 'package:musaliarapp/widgets_3/frosted_widget.dart';
import 'package:musaliarapp/pages/Home/home_page.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = BottomNavState.selectedIndex;

  static final List<IconData> _icons = [
    Icons.home_rounded,
    Icons.event_rounded,
    Icons.message_rounded,
    Icons.supervised_user_circle_rounded,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      BottomNavState.selectedIndex = index; // update global state
    });

    vibrateIfEnabled(context);

    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MaineventPage()),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const GetintouchPage()),
        );
        break;
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ManagementPage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeExtension(92).h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(SizeExtension(60).r),
        child: FrostedWidget(
          // ignore: deprecated_member_use
          color: MyColors.darkBrown.withOpacity(.8),
          child: Padding(
            padding: EdgeInsets.all(SizeExtension(4).w),
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 120),
                  curve: Curves.easeIn,
                  left: _selectedIndex * SizeExtension(80).w,
                  top: 0,
                  child: Container(
                    height: SizeExtension(82).h,
                    width: SizeExtension(82).w,
                    decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(SizeExtension(50).r),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) {
                      return Expanded(
                        child: GestureDetector(
                          onTap: () => _onItemTapped(index),
                          behavior: HitTestBehavior.translucent,
                          child: Center(
                            child: Icon(
                              _icons[index],
                              size: 30.sp,
                              color: _selectedIndex == index
                                  ? MyColors.Black
                                  : MyColors.white,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
