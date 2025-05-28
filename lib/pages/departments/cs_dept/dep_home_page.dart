import 'package:flutter/material.dart';
import 'package:musaliarapp/pages/departments/cs_dept/event_details/event_details_page.dart';
import 'package:musaliarapp/utils/colors.dart';

class DepcsHomePage extends StatelessWidget {
  const DepcsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          padding: const EdgeInsets.only(bottom: 50),
          children: [
            const SizedBox(height: 80),
            const SizedBox(height: 40),
            Text(
              'Department of Computer Science & Engineering',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 35),
            Container(
              height: 1.7,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 1),
              decoration: BoxDecoration(
                // ignore: deprecated_member_use
                color: MyColors.Black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            const SizedBox(height: 35),
            Text(
              'ABOUT THE DEPARTMENT',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: 'SecondaSoft',
                color: MyColors.grey,
              ),
            ),
            const SizedBox(height: 11),
            Text(
              'Innovation, Knowledge, Excellence',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w500,
                fontFamily: 'SecondaSoft',
                color: MyColors.blue,
              ),
            ),
            Text(
              'Here are the Faculty Members.',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                fontFamily: 'SecondaSoft',
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 260,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      height: 290,
                                      left: -20,
                                      right: -30,
                                      child: Image.asset(
                                        'assets/images/IMG-20240314-WA0063.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 45,
                              child: Text(
                                'Dr Shine Raj G\nHead of the department',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 15),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              MyColors.x,

                                              // ignore: deprecated_member_use
                                              MyColors.x.withOpacity(0.2),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      height: 240,
                                      left: -12,
                                      child: Image.asset(
                                        'assets/images/harsha-1.jpg',
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 45,
                              child: Text(
                                'Ms Harsha Pushpan\nAssistant Professor',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 260,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      height: 210,
                                      left: -14,
                                      child: Image.asset(
                                        'assets/images/athira.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 45,
                              child: Text(
                                'Ms Athira B\nAssistant Professor',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 15),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              MyColors.x,

                                              // ignore: deprecated_member_use
                                              MyColors.x.withOpacity(0.2),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      height: 300,
                                      left: -14,
                                      right: -14,
                                      child: Image.asset(
                                        'assets/images/rajeena-1.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 45,
                              child: Text(
                                'Ms Rajeena Rahman\nAssistant Professor',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 260,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      height: 270,
                                      top: -1,
                                      left: -9,
                                      right: -9,
                                      child: Image.asset(
                                        'assets/images/IMG-20231008-WA0001-Teena-Ajayan-1.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 45,
                              child: Text(
                                'Ms Teena Ajayan\nAssistant Professor',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 15),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      height: 270,
                                      top: -1,
                                      left: -9,
                                      right: -9,
                                      child: Image.asset(
                                        'assets/images/scanner_20210705_140526-jitty-merin-1-e1723016758728.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 45,
                              child: Text(
                                'Ms Jitty Merin Mathew\nAssistant Professor',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 260,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      height: 270,
                                      top: -1,
                                      left: -9,
                                      right: -9,
                                      child: Image.asset(
                                        'assets/images/Photo-renjana1-Renjana-Ramachandran.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 45,
                              child: Text(
                                'Ms Renjana Ramachandran\nAssistant Professor',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 15),
                  Expanded(child: GestureDetector(onTap: () {})),
                ],
              ),
            ),

            const SizedBox(height: 15),
            Text(
              'OUR ACHIEVEMENTS',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                fontFamily: 'SecondaSoft',
              ),
            ),
            const SizedBox(height: 15),
            CollectionsWidget(assetPath: 'assets/imagesConvocation.JPG'),
            const SizedBox(height: 10),
            CollectionsWidget(assetPath: 'assets/imagesEEE.JPG'),
          ],
        ),
      ),
    );
  }
}

class CollectionsWidget extends StatelessWidget {
  final String assetPath;
  const CollectionsWidget({required this.assetPath, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 1),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EventDetailsPage()),
            );
          },
          child: Image.asset(assetPath, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
