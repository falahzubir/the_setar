import 'package:flutter/material.dart';

import '../auth/auth_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg1.jpg"),
          fit: BoxFit.cover,
          opacity: 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 65, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        blurRadius: 6, // Spread radius
                        offset: const Offset(0, 3), // Offset in x and y directions
                      ),
                    ],
                  ),
                  child: const Text(
                    "Enjoy",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        blurRadius: 6, // Spread radius
                        offset: const Offset(0, 3), // Offset in x and y directions
                      ),
                    ],
                  ),
                  child: Text(
                    "The SETAR!",
                    style: TextStyle(
                      color: Colors.white.withOpacity(1),
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // Long text
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        blurRadius: 6, // Spread radius
                        offset: const Offset(0, 3), // Offset in x and y directions
                      ),
                    ],
                  ),
                  child: Text(
                    "Welcome to SETAR app, where adventure awaits! Explore new destinations, discover hidden gems, and create unforgettable memories with just a tap of your finger.",
                    style: TextStyle(
                      color: Colors.white.withOpacity(1),
                      fontSize: 16,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AuthPage(),
                      ),
                    );
                  },
                  child: Ink(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black54,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
