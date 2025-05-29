import 'package:flutter/material.dart';
import 'package:musaliarapp/pages/departments/mca_deparment/events_details/events_details_page.dart';
import 'package:musaliarapp/utils/colors.dart';

class DepmcaHomePage extends StatelessWidget {
  const DepmcaHomePage({super.key});

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
                                        'assets/images/shyma.jpg',
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
                                'Prof Shyma Kareem\nHead of the department',
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
                                        'assets/images/jogimol.jpg',
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
                                'Ms Jogimol Joseph\nAssociate Professor',
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
                                        'assets/images/sindhu.jpg',
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
                                'Ms Sindhu Daniel\nAssociate Professor',
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
                                        'assets/images/rinsa.jpg',
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
                                'Ms Rinsa Rees\nAssistant Professor',
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
                                        'assets/images/preethi.jpg',
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
                                'Ms Preethi Thomas\nAssistant Professor',
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
                  Expanded(child: GestureDetector()),
                ],
              ),
            ),

            const SizedBox(height: 15),
            Text(
              'WORKSHOPS CONDUCTED',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                fontFamily: 'SecondaSoft',
              ),
            ),
            const SizedBox(height: 15),
            CollectionsWidget(
              assetPath: 'assets/images/sindhu_mis_workshop.jpg',
            ),
            const SizedBox(height: 10),
            CollectionsWidget(assetPath: 'assets/images/5.jpg'),
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
              MaterialPageRoute(
                builder: (context) => const EventsDetailsPage(),
              ),
            );
          },
          child: Image.asset(assetPath, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
