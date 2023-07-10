import 'package:flutter/material.dart';
import 'package:the_setar/screens/home_page.dart';

import '../components/colors.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void openMenu() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          backgroundColor: CustomColors.secondary,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(15.0),
            child: IconButton(
              icon: const Icon(
                Icons.menu_rounded,
                color: Colors.black45,
                size: 35,
              ),
              onPressed: openMenu,
            ),
          ),
        ),
      ),

      // Drawer untuk side bar
      drawer: Drawer(
        // Add your side bar content here
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage("assets/bg1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                'Side Bar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // Handle side bar item 1 press
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Favourite'),
              onTap: () {
                // Handle side bar item 2 press
              },
            ),
          ],
        ),
      ),

      // Paparkan homepage
      body: const HomePage(),
    );
  }
}
