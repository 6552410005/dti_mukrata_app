// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class AboutUI extends StatefulWidget {
  const AboutUI({super.key});

  @override
  State<AboutUI> createState() => _AboutUIState();
}

class _AboutUIState extends State<AboutUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            ClipRRect(
              child: Image.asset(
                'assets/images/saulogo.png',
                width: MediaQuery.of(context).size.width * 0.65,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Text(
              'Tech SAU BUFFET',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: MediaQuery.of(context).size.height * 0.025,
              ),
            ),
            Text(
              'แอปพลิเคชันร้านหมูกะทะ\n\t\t\t\t\t\t\t\t\t\t\t\tเพื่อคนไทย\n\t\t\t\t\t\t\t\t\t\t\tโดยเด็กไทย\n\tสนใจแอปพลิเคชันตืดต่อ',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: MediaQuery.of(context).size.height * 0.015,
              ),
            ),
            Text(
              'เด็กไอที SAU',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: MediaQuery.of(context).size.height * 0.025,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            ClipRRect(
              child: Image.asset(
                'assets/images/sauqr.png',
                width: MediaQuery.of(context).size.width * 0.60,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
