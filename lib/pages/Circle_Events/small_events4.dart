// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:musaliarapp/utils/colors.dart';

class SmallEvents4 extends StatelessWidget {
  const SmallEvents4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // right top black
          Positioned(
            top: 20,
            right: -70,
            height: 250,
            child: Transform.rotate(
              angle: 4.5,
              child: Image(
                image: Svg('assets/svgs/svg-path.svg'),
                color: MyColors.darkTeal,
              ),
            ),
          ),
          // left side orangeish
          Positioned(
            top: 5,
            left: -205,
            height: 450,
            child: Transform.rotate(
              angle: pi,
              child: Image(
                image: Svg('assets/svgs/svg-path.svg'),
                color: MyColors.darkBrown,
              ),
            ),
          ),
          // Right side dark green
          Positioned(
            bottom: 180,
            right: -220,
            height: 450,
            child: Transform.rotate(
              angle: 2 * pi,
              child: Image(
                image: Svg('assets/svgs/svg-path.svg'),
                color: MyColors.darkGreen,
              ),
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.center,
              child: Transform.rotate(
                angle: 2 * pi,
                child: Padding(
                  padding: const EdgeInsets.only(top: 200, right: 120),
                  child: Image(
                    height: 100,
                    width: 90,
                    image: Svg('assets/svgs/svg-path.svg'),
                    color: MyColors.darkTeal,
                  ),
                ),
              ),
            ),
          ),
          // Right bottom corner side dark orange
          Positioned(
            bottom: -340,
            right: -240,
            height: 450,
            child: Transform.flip(
              flipX: true,
              flipY: true,
              child: Image(
                image: Svg('assets/svgs/svg-path.svg'),
                color: MyColors.darkBrown,
              ),
            ),
          ),

          // left bottom corner side
          // some unknown color name haha
          Positioned(
            bottom: -130,
            left: -250,
            height: 450,
            child: Transform.rotate(
              angle: pi * 0.5,
              child: Image(
                image: Svg('assets/svgs/svg-path.svg'),
                color: MyColors.ligthPink,
              ),
            ),
          ),

          Positioned.fill(
            bottom: 100,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'warren',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Warren conducts your financial life\nso you can make good money\ndecisions with confidence.',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
