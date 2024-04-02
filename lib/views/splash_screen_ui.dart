// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:dti_mukrata_app/views/home_ui.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 1),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUI(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/images/logo.png',
                width: MediaQuery.of(context).size.width * 0.5,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              'Tech SAU BUFFET',
              style: GoogleFonts.itim(
                fontSize: MediaQuery.of(context).size.height * 0.045,
                color: Colors.white,
              ),
            ),
            Text(
              'Copyright © 2024 by Kanchai DTI-SAU',
              style: GoogleFonts.itim(
                color: Colors.white,
              ),
            ),
            Text(
              'version 1.0.0',
              style: GoogleFonts.itim(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
