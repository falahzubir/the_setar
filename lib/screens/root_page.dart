import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: IconButton(
            icon: Icon(
              Icons.menu_rounded,
              color: Colors.black45,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
      ),
      body: HomePage(),
    );
  }
}
