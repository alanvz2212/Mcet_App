import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musaliarapp/pages/departments/mca_deparment/dep_home_page.dart';
import 'package:musaliarapp/utils/colors.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';

class DepmbaLandingPage extends StatelessWidget {
  const DepmbaLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          Positioned(
            bottom: -10,
            height: 460,
            left: -10,
            right: 0,
            child: GestureDetector(
              onTap: () {
                vibrateIfEnabled(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DepmcaHomePage()),
                );
              },
              child: Image.asset(
                'assets/images/consultant-779590_1920.jpg',
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 62,
            left: 20,
            child: GestureDetector(
              onTap: () {
                vibrateIfEnabled(context);
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.only(
                  left: 11,
                  right: 12,
                  top: 11,
                  bottom: 11,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).textTheme.titleLarge?.color,

                  borderRadius: BorderRadius.circular(40),
                ),
                child: Icon(
                  CupertinoIcons.chevron_back,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
            ),
          ),

          Positioned(
            top: 80,
            left: 20,
            right: 20,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 45,
                        width: 45,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              right: 0,
                              child: SizedBox(height: 12, width: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      SizedBox(height: 50, width: 50),
                    ],
                  ),
                ),
                Text(
                  'Welcome to ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: MyColors.blue,
                  ),
                ),
                Text(
                  'Master\'s of',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    letterSpacing: -.2,
                  ),
                ),
                Text(
                  'Business',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    letterSpacing: -.2,
                    height: 1,
                  ),
                ),
                Text(
                  'Administration',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    letterSpacing: -.2,
                    height: 1,
                  ),
                ),

                const SizedBox(height: 5),
                Text(
                  'Lead with vision, manage with purpose.\nMBA shapes strategists who turn challenges into opportunities.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: MyColors.grey,
                    letterSpacing: -.3,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
