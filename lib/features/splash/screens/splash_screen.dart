import 'dart:async';

import 'package:farmchoice/core/theme/spectrum.dart';
import 'package:farmchoice/features/auth/screens/auth_splash_screen.dart';
import 'package:flutter/material.dart';

import '../../home/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(AuthSplashScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Spectrum.greenColor,
      body: Container(
          height: size.height,
          alignment: Alignment.center,
          child: const Text(
            'FARMCHOICE',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Spectrum.whiteColor,
            ),
          )),
    );
  }
}
