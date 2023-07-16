import 'package:flutter/material.dart';
import 'package:the_setar/screens/setar/details_page.dart';

import '../../components/colors.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class UserData {
  final String image;
  final String title;
  final String description;

  UserData(this.image, this.title, this.description);
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    UserData laksaData = UserData(
      'assets/laksa.png',
      'Laksa Tepi Sungai',
      'Laksa Tepi Sungai Kedah is a popular local dish in the Malaysian state of Kedah. It is a variant of laksa, which is a traditional spicy noodle soup commonly found in Southeast Asia. The name "Laksa Tepi Sungai" translates to "Laksa by the riverside" in English, indicating that it is a dish commonly enjoyed near the river in Kedah. The dish typically consists of rice noodles served in a flavorful broth made from a combination of spices, herbs, and various ingredients.',
    );

    UserData meeAbu = UserData(
      'assets/mee_abu.jpg',
      'Mee Abu',
      'Mee Abu Alor Star features yellow egg noodles, commonly known as "mee kuning" or "mee jawa," which are cooked to perfection. The noodles are typically stir-fried with a combination of ingredients, resulting in a flavorful and aromatic dish.',
    );

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
      body: Container(
        color: CustomColors.secondary,
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Spacing
              const SizedBox(height: 20),

              // Box
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(userData: laksaData),
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
                            "assets/laksa.png",
                            width: 140,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      const SizedBox(width: 40),

                      // Nama tempat
                      const Text(
                        "Laksa Tepi Sungai",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Spacing
              const SizedBox(height: 20),

              // Box
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(userData: meeAbu),
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
                            "assets/mee_abu.jpg",
                            width: 140,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      const SizedBox(width: 40),

                      // Nama tempat
                      const Text(
                        "Mee Abu",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Spacing
              const SizedBox(height: 20),

              // Box
              Container(
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
                          "assets/nasik_lemak_hj_ali.png",
                          width: 140,
                          height: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    const SizedBox(width: 40),

                    // Nama tempat
                    const Text(
                      "Nasi Lemak Haji Ali",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              // Spacing
              const SizedBox(height: 20),

              // Box
              Container(
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
                          "assets/rumah_mengambing.png",
                          width: 140,
                          height: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    const SizedBox(width: 40),

                    // Nama tempat
                    const Text(
                      "Rumah Mengambing",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              // Spacing
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
