import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:the_setar/components/colors.dart';

import '../../model/data_model.dart';
import 'details_page.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: CustomColors.primary,
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: height,
              width: width,
              decoration: const BoxDecoration(
                color: CustomColors.secondary,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),

                    // Aman Central
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailsPage(userData: amanCentral),
                          ),
                        );
                      },
                      child: Container(
                        alignment: const Alignment(0, 0),
                        height: 150,
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            // Image
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  "assets/aman.jpg",
                                  width: 140,
                                  height: 140,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            const SizedBox(width: 40),

                            // Nama tempat
                            const Text(
                              "Aman Central",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ).animate().fade(delay: 600.ms).slideX(),
                    const SizedBox(height: 20),

                    // Pekan Rabu
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailsPage(userData: pekanRabu),
                          ),
                        );
                      },
                      child: Container(
                        alignment: const Alignment(0, 0),
                        height: 150,
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            // Image
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  "assets/pekan_rabu.jpg",
                                  width: 140,
                                  height: 140,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            const SizedBox(width: 40),

                            // Nama tempat
                            const Text(
                              "Pekan Rabu",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ).animate().fade(delay: 700.ms).slideX(),
                    const SizedBox(height: 20),

                    // Sentosa Plaza
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: const Alignment(0, 0),
                        height: 150,
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            // Image
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  "assets/sentosa_plaza.jpg",
                                  width: 140,
                                  height: 140,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            const SizedBox(width: 40),

                            // Nama tempat
                            const Text(
                              "Sentosa Plaza",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ).animate().fade(delay: 800.ms).slideX(),
                    const SizedBox(height: 20),

                    // Uptown Alor Setar
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: const Alignment(0, 0),
                        height: 150,
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            // Image
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  "assets/uptown_alor_setar.jpg",
                                  width: 140,
                                  height: 140,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            const SizedBox(width: 40),

                            // Nama tempat
                            const Text(
                              "Uptown Alor Setar",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ).animate().fade(delay: 900.ms).slideX(),
                    const SizedBox(height: 20),

                    // Pasar Karat Kampung Berjaya
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: const Alignment(0, 0),
                        height: 150,
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            // Image
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  "assets/pasar_karat_kampung_berjaya.jpg",
                                  width: 140,
                                  height: 140,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            const SizedBox(width: 20),

                            // Nama tempat
                            const Text(
                              "Pasar Karat Kampung Berjaya",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ).animate().fade(delay: 1000.ms).slideX(),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
