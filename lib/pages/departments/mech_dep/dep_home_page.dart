import 'package:flutter/material.dart';
import 'package:musaliarapp/pages/departments/mech_dep/event_details/event_details_page.dart';
import 'package:musaliarapp/utils/colors.dart';

class DepmechHomePage extends StatelessWidget {
  const DepmechHomePage({super.key});

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
              'Department of Computer Applications',
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
                                      height: 210,
                                      left: -6,
                                      child: Image.asset(
                                        'assets/images/madhu-1.jpg',
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
                                'Prof Madhu G\nHead of the department',
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
                                      left: -17,
                                      child: Image.asset(
                                        ' assets/images/soumyalatha1-1.jpg',
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
                                'Ms Soumyalata D\nAssociate Professor',
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
                                        'assets/images/SMITHA-1.jpg',
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
                                'Ms Smitha G Nair\nAssistant Professor',
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
                                      height: 400,
                                      left: -14,
                                      right: -14,
                                      child: Image.asset(
                                        'assets/images/ajay-1.jpg',
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
                                'Mr Ajai M\nAssistant Professor',
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
                                        'assets/images/jithin-1.jpg',
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
                                'Mr Jithin K\nAssistant Professor',
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
                                        'assets/images/Musaliar_ANOOPSR-1.jpg',
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
                                'Mr Anoop S RnAssistant Professor',
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
                                        'assets/images/jithin-1.jpg',
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
                                'Mr Jithin K\nAssistant Professor',
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
                                        'assets/images/Musaliar_Pramod-1.jpg',
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
                                'Mr Pramod B\nAssistant Professor',
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
