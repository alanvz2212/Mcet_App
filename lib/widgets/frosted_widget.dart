
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FrostedWidget extends StatelessWidget {
  final Alignment begin;
  final Alignment end;
  final Color color;
  final Widget child;
  final double opacity;

  const FrostedWidget({
    super.key,
    this.begin = Alignment.topCenter,
    this.end = Alignment.bottomLeft,
    required this.child,
    required this.color,
    this.opacity = 0.5,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(SizeExtension(30).r),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          width: double.infinity,
          // ignore: deprecated_member_use
          color: color.withOpacity(opacity),
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}

class RoundedIconContainer extends StatelessWidget {
  const RoundedIconContainer({
    super.key,
    required this.iconBackgroundColor,
    required this.iconData,
    required this.iconColor,
    this.borderRadius = 6,
  });

  final Color iconBackgroundColor;
  final IconData? iconData;
  final Color? iconColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        height: SizeExtension(23).h,
        width: SizeExtension(23).w,
        decoration: BoxDecoration(
          color: iconBackgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: Icon(
            iconData!,
            // ignore: deprecated_member_use
            color: iconColor!.withOpacity(.9),
            size: 13.sp,
          ),
        ),
      ),
    );
  }
}
