import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';
import 'package:musaliarapp/widgets_3/swipe_testimonail.dart';

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
              backCardOffset: const Offset(0, 0),
              padding: const EdgeInsets.all(0),
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
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () {
                vibrateIfEnabled(context);
                Navigator.pop(context);
              },
              behavior: HitTestBehavior.translucent,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).textTheme.titleLarge?.color,
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.all(13),
                child: Icon(
                  CupertinoIcons.chevron_back,
                  size: 25,
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
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const Spacer(),
          SizedBox(height: 170),
          Text(
            '${candidate.name},',
            style: TextStyle(
              color: Theme.of(context).textTheme.titleLarge?.color,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'MCA',
            style: TextStyle(
              color: Theme.of(context).textTheme.titleLarge?.color,
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            candidate.bio,
            maxLines: 20,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Theme.of(context).textTheme.titleLarge?.color,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 70),
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
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).textTheme.titleLarge?.color,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      CupertinoIcons.chevron_back,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    vibrateIfEnabled(context);
                    controller.swipe(CardSwiperDirection.right);
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).textTheme.titleLarge?.color,
                      borderRadius: BorderRadius.circular(25),
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
