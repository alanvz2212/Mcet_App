import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musaliarapp/pages/departments/cs_dept/dep_home_page.dart';
import 'package:musaliarapp/utils/colors.dart';
import 'package:musaliarapp/vibration/vibration_helper.dart';

class DepcsLandingPage extends StatelessWidget {
  const DepcsLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          // Background Image
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
                  MaterialPageRoute(builder: (context) => DepcsHomePage()),
                );
              },
              child: Image.asset(
                'assets/images/imac-1999642.png',
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 🔙 Back Arrow Button at the top
          Positioned(
            top: 60,
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

          // Main Text Content
          Positioned(
            top: 80,
            left: 20,
            right: 20,
            child: Column(
              children: [
                SizedBox(height: 50),
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
                  'Department of',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    letterSpacing: -.2,
                  ),
                ),
                Text(
                  'Computer Science &',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    letterSpacing: -.2,
                    height: 1,
                  ),
                ),
                Text(
                  'Engineering',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    letterSpacing: -.2,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Code the logic, craft the future.\n'
                  'CSE empowers minds to engineer tomorrow',
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
