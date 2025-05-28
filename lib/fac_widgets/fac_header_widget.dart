import 'package:flutter/material.dart';
import 'package:musaliarapp/utils/colors.dart';

class FacHeaderWidget extends StatelessWidget {
  const FacHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 28,
            width: 27,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 2,
                  width: 17,
                  margin: const EdgeInsets.symmetric(horizontal: 1),
                  decoration: BoxDecoration(
                    color: MyColors.Black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  height: 2,
                  width: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  height: 2,
                  width: 3,
                  margin: const EdgeInsets.symmetric(horizontal: 1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                SizedBox(child: Image.asset('assets/images/3.jpg')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
