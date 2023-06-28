// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
// import 'package:the_setar/auth/login_page.dart';
import 'package:the_setar/screens/infra/infra_page.dart';
import 'package:the_setar/screens/land/smart_land_page.dart';
import 'package:the_setar/screens/mobility/smart_mobility_page.dart';
import 'package:the_setar/screens/setar/setar_tourist_trail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () => _onBackButtonPressed(context),
      child: Scaffold(
        body: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height * .3,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage("assets/header.png"),
                    ),
                  ),
                ),

                // Welcome text
                Container(
                  padding: const EdgeInsets.only(top: 40),
                  alignment: Alignment.topCenter,
                  child: const Column(
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "falah@gmail.com",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                // List of features
                Container(
                  padding: const EdgeInsets.only(top: 210),
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        children: [
                          // Logout button
                          // Container(
                          //   child: ElevatedButton(
                          //     child: const Text("Logout"),
                          //     onPressed: () {
                          //       FirebaseAuth.instance.signOut().then((value) {
                          //         print("You have sign out");
                          //         Navigator.push(
                          //             context,
                          //             MaterialPageRoute(
                          //                 builder: (context) => const LoginPage()));
                          //       });
                          //     },
                          //   ),
                          // ),

                          // Spacing
                          // SizedBox(height: 90),
                          // Container(
                          //   child: const Column(
                          //     children: [
                          //       Text(
                          //         "Welcome!",
                          //         style: TextStyle(
                          //           fontWeight: FontWeight.bold,
                          //           fontSize: 24,
                          //           color: Colors.white,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),

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
                              height: 220,
                              width: 390,
                              alignment: const Alignment(0, 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.multiply,
                                  ),
                                  image: const AssetImage(
                                      "assets/bandar-alor-setar.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Image(
                                  //   width: 140,
                                  //   image: AssetImage("assets/h1.png"),
                                  // ),
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
                          ).animate().fade(delay: 450.ms).slideY(),
                          const SizedBox(height: 10),

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
                              height: 220,
                              width: 390,
                              alignment: const Alignment(0, 0),
                              decoration: BoxDecoration(
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
                          ).animate().fade(delay: 550.ms).slideY(),
                          const SizedBox(height: 10),

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
                              height: 220,
                              width: 390,
                              alignment: const Alignment(0, 0),
                              decoration: BoxDecoration(
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
                          ).animate().fade(delay: 650.ms).slideY(),
                          const SizedBox(height: 10),

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
                              height: 220,
                              width: 390,
                              alignment: const Alignment(0, 0),
                              decoration: BoxDecoration(
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
                          ).animate().fade(delay: 750.ms).slideY(),
                          const SizedBox(height: 100),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
