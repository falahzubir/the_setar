// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:the_setar/screens/infra/infra_page.dart';
import 'package:the_setar/screens/land/smart_land_page.dart';
import 'package:the_setar/screens/mobility/smart_mobility_page.dart';
import 'package:the_setar/screens/setar/setar_tourist_trail_page.dart';

import '../components/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBackButtonPressed(context),
      child: Scaffold(
        backgroundColor: CustomColors.secondary,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: CustomColors.primary,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      user.email!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),

              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                title: Text('Home'),
                onTap: () {
                  // Handle menu item 1 tap
                },
              ),

              ListTile(
                leading: const Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
                title: const Text('Favourite'),
                onTap: () {
                  // Handle side bar item 2 press
                },
              ),

              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: const Text('Profile'),
                onTap: () {
                  // Handle side bar item 2 press
                },
              ),

              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
                title: Text('Sign out'),
                onTap: () {
                  FirebaseAuth.instance.signOut();
                },
              ),
              // Add more ListTile widgets for additional menu items
            ],
          ),
        ),
        body: Builder(builder: (context) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Spacing
                const SizedBox(height: 60),

                // App bar
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: GestureDetector(
                    onTap: () {
                      // Open the sidebar or trigger the desired functionality
                      Scaffold.of(context).openDrawer();
                    },
                    child: Container(
                      height: 50,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white54,
                      ),
                      child: Image.asset(
                        "assets/logo/menu.png",
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ),

                // Spacing
                const SizedBox(height: 25),

                // Categories
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                    "Discover a New Excitement",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
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
                            borderRadius: BorderRadius.circular(15),
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
                            borderRadius: BorderRadius.circular(15),
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
                            borderRadius: BorderRadius.circular(15),
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
                            borderRadius: BorderRadius.circular(15),
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
                      "For you",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // Spacing
                const SizedBox(height: 15),

                // For you
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    height: 210,
                    width: 355,
                    alignment: const Alignment(0, 0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 10,
                          offset: const Offset(0, 2),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage("assets/ads.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ).animate().fade(delay: 450.ms).slideX(),
                ),

                // Spacing
                const SizedBox(height: 100),

                // Recommended Text
                Container(
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "That's all for now!",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                // Spacing
                const SizedBox(height: 25),
              ],
            ),
          );
        }),
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
