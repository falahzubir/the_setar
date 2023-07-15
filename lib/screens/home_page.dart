// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
// import 'package:the_setar/auth/login_page.dart';
import 'package:the_setar/screens/infra/infra_page.dart';
import 'package:the_setar/screens/land/smart_land_page.dart';
import 'package:the_setar/screens/mobility/smart_mobility_page.dart';
import 'package:the_setar/screens/setar/setar_tourist_trail_page.dart';

import '../components/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () => _onBackButtonPressed(context),
      child: Scaffold(
        backgroundColor: CustomColors.secondary,
        body: Column(
          children: [
            // Spacing
            const SizedBox(height: 10),

            // Categories
            Container(
              margin: const EdgeInsets.only(left: 25),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
            ),

            // Spacing
            const SizedBox(height: 15),

            // List of features
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // Left spacing
                  const SizedBox(width: 20),

                  // Setar Tourist Trails
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const SetarPage();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 340,
                      width: 240,
                      alignment: const Alignment(0, 0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5),
                            BlendMode.multiply,
                          ),
                          image:
                              const AssetImage("assets/bandar-alor-setar.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            width: 140,
                            image: AssetImage("assets/h1.png"),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "SETAR TOURIST TRAILS",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "ESCAPE, TRESURE, HOLIDAY, ENJOY",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ).animate().fade(delay: 450.ms).slideX(),

                  // Right spacing
                  const SizedBox(width: 15),

                  // Infrastructure & Utilities
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const InfraPage();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 340,
                      width: 240,
                      alignment: const Alignment(0, 0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5),
                            BlendMode.multiply,
                          ),
                          image: const AssetImage("assets/infra.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            width: 140,
                            image: AssetImage("assets/h2.png"),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "INFRASTRUCTURE & UTILITIES",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "SAFETY, CLEAN, GROWTH",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ).animate().fade(delay: 550.ms).slideX(),

                  // Right spacing
                  const SizedBox(width: 15),

                  // Smart Mobility
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const MobilPage();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 340,
                      width: 240,
                      alignment: const Alignment(0, 0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5),
                            BlendMode.multiply,
                          ),
                          image: const AssetImage("assets/scooter.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            width: 140,
                            image: AssetImage("assets/h3.png"),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "SMART MOBILITY",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "CONNECTED, AFFORDABLE, FAST",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ).animate().fade(delay: 650.ms).slideX(),

                  // Right spacing
                  const SizedBox(width: 15),

                  // Smart Land
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const LandPage();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 340,
                      width: 240,
                      alignment: const Alignment(0, 0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5),
                            BlendMode.multiply,
                          ),
                          image: const AssetImage("assets/map.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            width: 140,
                            image: AssetImage("assets/h4.png"),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "SMART LAND",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "EXPLORE, IDENTIFIED",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ).animate().fade(delay: 750.ms).slideX(),

                  //Right spacing
                  const SizedBox(width: 20),
                ],
              ),
            ),

            // Spacing
            const SizedBox(height: 40),

            // Recommended Text
            Container(
              margin: const EdgeInsets.only(left: 25),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recommended",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
            ),

            // Spacing
            const SizedBox(height: 15),

            // Recommended
            GestureDetector(
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (BuildContext context) {
                //       return const FoodPage();
                //     },
                //   ),
                // );
              },
              child: Container(
                height: 200,
                width: 400,
                alignment: const Alignment(0, 0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage("assets/ads.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ).animate().fade(delay: 450.ms).slideX(),
          ],
        ),
      ),
    );
  }

  // Alert pop up message
  Future<bool> _onBackButtonPressed(BuildContext context) async {
    bool? exitApp = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const Text("Do you want to close the app?"),
          actions: [
            // No button
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text("No"),
            ),

            // Yes button
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text("Yes"),
            ),
          ],
        );
      },
    );

    if (exitApp ?? false) {
      SystemNavigator.pop(); // Close the app
    }

    return exitApp ?? false;
  }
}
