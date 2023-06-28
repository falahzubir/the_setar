import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:the_setar/screens/home_page.dart';
import 'package:the_setar/screens/wallet_page.dart';
import 'package:the_setar/screens/profile_page.dart';
import 'package:the_setar/screens/setar/heritage_page.dart';

import '../auth/login_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;

  List<Widget> pages = [
    const HomePage(),
    const WalletPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = [
      const GButton(
        icon: Icons.home,
        text: "Home",
      ),
      const GButton(
        icon: Icons.account_balance_wallet_outlined,
        text: "Wallet",
      ),
      const GButton(
        icon: Icons.person,
        text: "Profile",
      ),
    ];

    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0,
      ),
      drawer: const NavigationDrawer(),
      body: pages[currentPage],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            padding: const EdgeInsets.all(17),
            gap: 8,
            onTabChange: (index) => setState(() => currentPage = index),
            tabs: items,
          ),
        ),
      ),
    );
  }
}

// For sidebar
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text("Home"),
              onTap: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const RootPage(),
              )),
            ),

            // Favourites
            ListTile(
              leading: const Icon(Icons.favorite_border),
              title: const Text("Favourites"),
              onTap: () {
                // Close navigation drawer before
                Navigator.pop(context);

                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HeritagePage(),
                ));
              },
            ),

            // Divider
            const Divider(color: Colors.black54),

            // Settings
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),

            // Notifications
            const ListTile(
              leading: Icon(Icons.notifications_outlined),
              title: Text("Notifications"),
            ),

            // Sign out
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Sign out"),
              onTap: () {
                FirebaseAuth.instance.signOut().then(
                  (value) {
                    print("You have sign out");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                );
              },
            ),

            // Copyright text
            Container(
              height: MediaQuery.of(context).size.height / 2.2,
              alignment: Alignment.bottomCenter,
              child: const Text(
                "Powered by JomCreate Solution",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      );
}
