import 'package:farmchoice/core/theme/spectrum.dart';
import 'package:farmchoice/features/splash/screens/splash_screen.dart';
import 'package:farmchoice/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farm Choice',
      debugShowCheckedModeBanner: false,
      theme: Spectrum.appTheme,
      home: const SplashScreen(),
      onGenerateRoute: (settings) => appRoutes(settings),
    );
  }
}
