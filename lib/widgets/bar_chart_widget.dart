//
import 'package:musaliarapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BarChartWidget extends StatefulWidget {
  final List<double> percentages;
  const BarChartWidget({required this.percentages, super.key})
    : assert(percentages.length == 7);

  static final List<String> days = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun',
  ];

  @override
  State<BarChartWidget> createState() => _BarChartWidgetState();
}

class _BarChartWidgetState extends State<BarChartWidget> {
  final List<double> _percentages = List.generate(7, (_) => 0);
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        _percentages.setAll(0, widget.percentages);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < 7; i++)
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: SizeExtension(180).h,
                width: SizeExtension(20).w,
                decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  color: MyColors.grey.withOpacity(.9),
                  borderRadius: BorderRadius.circular(SizeExtension(30).r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 350),
                      curve: Curves.easeInOut,
                      height:
                          SizeExtension(1.8).h * _percentages[i].clamp(0, 100),
                      width: SizeExtension(20).w,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: widget.percentages[i] == 100
                              ? [MyColors.orange, MyColors.lightPurple]
                              : [MyColors.purple, MyColors.purple],
                          stops: const [0.0, .4],
                        ),
                        borderRadius: BorderRadius.circular(
                          SizeExtension(30).r,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: SizeExtension(5).h),
              SizedBox(
                height: SizeExtension(25).h,
                child: Text(
                  BarChartWidget.days[i],
                  style: TextStyle(
                    // ignore: deprecated_member_use
                    color: MyColors.Black.withOpacity(.65),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
