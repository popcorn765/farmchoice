import 'package:flutter/material.dart';

class Spectrum {
  static const greenColor = Color.fromRGBO(16, 75, 44, 0.8);
  static const greenColor2 = Color.fromRGBO(55, 194, 122, 1);
  static const blackColor = Colors.black;
  static const whiteColor = Colors.white;
  static const greyColor = Colors.grey;

//AppTheme

  static final appTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Spectrum.greenColor),
      useMaterial3: true,
      fontFamily: 'Aclonica',
      textTheme: const TextTheme().copyWith(
        bodyLarge: const TextStyle(color: Spectrum.whiteColor),
        bodyMedium: const TextStyle(color: Spectrum.whiteColor),
        bodySmall: const TextStyle(color: Spectrum.whiteColor),
        displayLarge: const TextStyle(color: Spectrum.whiteColor),
        displayMedium: const TextStyle(color: Spectrum.whiteColor),
        displaySmall: const TextStyle(color: Spectrum.whiteColor),
      ));
}
