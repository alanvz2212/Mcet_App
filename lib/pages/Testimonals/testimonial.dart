import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';
import 'package:musaliarapp/widgets_3/swipe_testimonail.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Testimonial extends StatefulWidget {
  final List<SwipeTestimonail> candidates;
  final List<String> assetPaths;
  final int initialIndex;
  const Testimonial({
    required this.initialIndex,
    required this.candidates,
    required this.assetPaths,
    super.key,
  });

  @override
  State<Testimonial> createState() => TestimonialPageState();
}

class TestimonialPageState extends State<Testimonial> {
  final CardSwiperController controller = CardSwiperController();
  List<Widget> cards = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      cards = List.generate(
        widget.candidates.length,
        (index) => DaitngProfileCard(
          candidate: widget.candidates[index],
          controller: controller,
        ),
      );
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: CardSwiper(
              controller: controller,
              cardsCount: cards.length,
              maxAngle: 20,
              initialIndex: widget.initialIndex,
              allowedSwipeDirection: AllowedSwipeDirection.only(
                left: true,
                right: true,
              ),
              numberOfCardsDisplayed: 3,
              backCardOffset: Offset(0, 0),
              padding: EdgeInsets.all(0),
              cardBuilder:
                  (
                    context,
                    index,
                    horizontalThresholdPercentage,
                    verticalThresholdPercentage,
                  ) => cards[index % cards.length],
            ),
          ),
          Positioned(
            top: 62.h,
            left: 20.w,
            child: GestureDetector(
              onTap: () {
                vibrateIfEnabled(context);
                Navigator.pop(context);
              },
              behavior: HitTestBehavior.translucent,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).textTheme.titleLarge?.color,
                  borderRadius: BorderRadius.circular(40.r),
                ),
                padding: EdgeInsets.all(13.r),
                child: Icon(
                  CupertinoIcons.chevron_back,
                  size: 25.sp,
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

class DaitngProfileCard extends StatelessWidget {
  final CardSwiperController controller;
  final SwipeTestimonail candidate;

  const DaitngProfileCard({
    required this.candidate,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.r)),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 170.h),
          Text(
            '${candidate.name},',
            style: TextStyle(
              color: Theme.of(context).textTheme.titleLarge?.color,
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'MCA',
            style: TextStyle(
              color: Theme.of(context).textTheme.titleLarge?.color,
              fontSize: 22.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            candidate.bio,
            maxLines: 20,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Theme.of(context).textTheme.titleLarge?.color,
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
              height: 1.3,
            ),
          ),
          SizedBox(height: 70.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    vibrateIfEnabled(context);
                    controller.swipe(CardSwiperDirection.left);
                  },
                  child: Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Theme.of(context).textTheme.titleLarge?.color,
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    child: Icon(
                      CupertinoIcons.chevron_back,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    vibrateIfEnabled(context);
                    controller.swipe(CardSwiperDirection.right);
                  },
                  child: Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Theme.of(context).textTheme.titleLarge?.color,
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    child: Icon(
                      CupertinoIcons.chevron_forward,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
