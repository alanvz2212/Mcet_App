import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BigWidget extends StatefulWidget {
  const BigWidget({super.key});

  @override
  State<BigWidget> createState() => _BigWidgetState();
}

class _BigWidgetState extends State<BigWidget> {
  final ScrollController _controller = ScrollController();
  late Timer _timer;

  final List<String> images = [
    'assets/images/Activity Dance.JPG',
    'assets/images/Convocation.JPG',
    'assets/images/Library 2.JPG',
    'assets/images/candle.jpg',
    // Add more images if needed
  ];

  double _scrollPosition = 0.0;
  static const double _scrollSpeed = 1.0; // Adjust for speed

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 16), (timer) {
      if (_controller.hasClients) {
        _scrollPosition += _scrollSpeed;
        if (_scrollPosition >= _controller.position.maxScrollExtent) {
          _scrollPosition = 0;
          _controller.jumpTo(0);
        } else {
          _controller.jumpTo(_scrollPosition);
        }
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeExtension(25).w),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(SizeExtension(40).r),
        child: Container(
          height: SizeExtension(210).h,
          width: double.infinity,
          color: Theme.of(context).scaffoldBackgroundColor,
          child: ListView.builder(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final imagePath = images[index % images.length];
              return Padding(
                padding: EdgeInsets.all(SizeExtension(8.0).w),
                child: Image.asset(
                  imagePath,
                  height: SizeExtension(180).h,
                  width: SizeExtension(180).w,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
