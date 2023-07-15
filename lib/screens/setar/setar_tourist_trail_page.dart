import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:the_setar/screens/setar/food_page.dart';
import 'package:the_setar/screens/setar/heritage_page.dart';

class SetarPage extends StatelessWidget {
  const SetarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: Colors.black54),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width,
              alignment: const Alignment(0, 0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5),
                    BlendMode.multiply,
                  ),
                  image: const AssetImage("assets/bandar-alor-setar.jpg"),
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

            // ---------------- SLOGAN ---------------- //
            Container(
              alignment: const Alignment(0, 0),
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: const Text(
                "Come Visit Our Popular Places",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ).animate().fade(delay: 500.ms).slide(),
            ),

            // ---------------- ROW 1 ---------------- //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // The Heritage Trail
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const HeritagePage();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width * .5,
                    alignment: const Alignment(0, 0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5),
                          BlendMode.multiply,
                        ),
                        image: const AssetImage("assets/masjid.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "The Heritage Trail",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Best Place Of SETAR",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ).animate().fade(delay: 500.ms).slideX(),

                // The Food Trail
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const FoodPage();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width * .5,
                    alignment: const Alignment(0, 0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5),
                          BlendMode.multiply,
                        ),
                        image: const AssetImage("assets/food1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "The Food Trail",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Best Food Place Of SETAR",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ).animate().fade(delay: 550.ms).slideX(),
              ],
            ),

            // ---------------- ROW 2 ---------------- //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // The Travel Inn
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width * .5,
                    alignment: const Alignment(0, 0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5),
                          BlendMode.multiply,
                        ),
                        image: const AssetImage("assets/heritage.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "The Travel Inn",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "The Accommodation Of SETAR",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ).animate().fade(delay: 600.ms).slideX(),

                // The Peace Of Art
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width * .5,
                    alignment: const Alignment(0, 0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5),
                          BlendMode.multiply,
                        ),
                        image: const AssetImage("assets/art.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "The Peace Of Art",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Support Local",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ).animate().fade(delay: 650.ms).slideX(),
              ],
            ),

            // ---------------- ROW 3 ---------------- //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // The Promotion Zone
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width * .5,
                    alignment: const Alignment(0, 0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5),
                          BlendMode.multiply,
                        ),
                        image: const AssetImage("assets/promotion.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "The Promotion Zone",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Save The Money",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ).animate().fade(delay: 700.ms).slideX(),

                // Easy & Safe Tourism
                GestureDetector(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.width * .5,
                    alignment: const Alignment(0, 0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5),
                          BlendMode.multiply,
                        ),
                        image: const AssetImage("assets/bus.webp"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Easy & Safe Tourism",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Safe Trip, Safe Return",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ).animate().fade(delay: 750.ms).slideX(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
