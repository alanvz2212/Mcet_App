import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musaliarapp/utils/colors.dart';

class FrostedWidget extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final BorderRadius borderRadius;
  final Widget child;
  final Color? color;
  final bool showBorder;

  const FrostedWidget({
    required this.padding,
    required this.borderRadius,
    required this.child,
    this.showBorder = false,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(_radiusToScreenUtil(borderRadius.topLeft)),
        topRight: Radius.circular(_radiusToScreenUtil(borderRadius.topRight)),
        bottomLeft: Radius.circular(
          _radiusToScreenUtil(borderRadius.bottomLeft),
        ),
        bottomRight: Radius.circular(
          _radiusToScreenUtil(borderRadius.bottomRight),
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: _paddingToScreenUtil(padding),
          decoration: BoxDecoration(
            // ignore: deprecated_member_use
            color: color ?? Colors.grey.withOpacity(0.15),
            border: showBorder
                ? Border.all(
                    // ignore: deprecated_member_use
                    color: MyColors.white.withOpacity(0.1),
                    width: SizeExtension(0.8).w,
                  )
                : null,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                _radiusToScreenUtil(borderRadius.topLeft),
              ),
              topRight: Radius.circular(
                _radiusToScreenUtil(borderRadius.topRight),
              ),
              bottomLeft: Radius.circular(
                _radiusToScreenUtil(borderRadius.bottomLeft),
              ),
              bottomRight: Radius.circular(
                _radiusToScreenUtil(borderRadius.bottomRight),
              ),
            ),
          ),
          child: child,
        ),
      ),
    );
  }

  double _radiusToScreenUtil(Radius radius) => radius.x == radius.y
      ? SizeExtension(radius.x).w
      : SizeExtension(radius.x).w;

  EdgeInsetsGeometry _paddingToScreenUtil(EdgeInsetsGeometry padding) {
    if (padding is EdgeInsets) {
      return EdgeInsets.only(
        left: SizeExtension(padding.left).w,
        top: SizeExtension(padding.top).h,
        right: SizeExtension(padding.right).w,
        bottom: SizeExtension(padding.bottom).h,
      );
    }
    return padding;
  }
}
