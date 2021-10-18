import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fore_cash/app/modules/Signup/views/signup_view.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => SignupView())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.network(
          'https://png.pngtree.com/thumb_back/fw800/back_our/20190614/ourmid/pngtree-fresh-and-simple-h5-background-app-guide-page-design-background-download-image_121781.jpg',
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
