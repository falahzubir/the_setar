import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:the_setar/screens/setar/bestplace_page.dart';
import 'package:the_setar/screens/setar/historic_page.dart';
import 'package:the_setar/screens/setar/recreation_page.dart';
import 'package:the_setar/screens/setar/shopping_page.dart';

class HeritagePage extends StatelessWidget {
  const HeritagePage({super.key});

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
        child: Center(
          child: Column(
            children: [
              // Historical & Cultural Tourism
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const HistoricPage();
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 4,
                  alignment: const Alignment(0, 0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5),
                        BlendMode.multiply,
                      ),
                      image: const AssetImage("assets/muzeum.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Historical & Cultural Tourism",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ).animate().fade(delay: 300.ms).slideX(),
              ),

              // Shopping Place
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const ShoppingPage();
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 4,
                  alignment: const Alignment(0, 0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5),
                        BlendMode.multiply,
                      ),
                      image: const AssetImage("assets/aman.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Shopping Place",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ).animate().fade(delay: 400.ms).slideX(),
              ),

              // Recreation Tourism
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const RecreationPage();
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 4,
                  alignment: const Alignment(0, 0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5),
                        BlendMode.multiply,
                      ),
                      image: const AssetImage("assets/tasik.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Recreation Tourism",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ).animate().fade(delay: 350.ms).slideX(),
              ),

              // All Best Place Map Guide “The SETAR”
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const BestPlacePage();
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 4,
                  alignment: const Alignment(0, 0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5),
                        BlendMode.multiply,
                      ),
                      image: const AssetImage("assets/best-place.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "All Best Place Map Guide “The SETAR”",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ).animate().fade(delay: 450.ms).slideX(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
