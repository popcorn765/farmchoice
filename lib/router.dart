import 'package:farmchoice/features/auth/screens/auth_splash_screen.dart';
import 'package:farmchoice/features/auth/screens/log_in_screen.dart';
import 'package:farmchoice/features/auth/screens/sign_up_screen.dart';
import 'package:farmchoice/features/home/screens/home_screen.dart';
import 'package:farmchoice/features/splash/screens/splash_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> appRoutes(RouteSettings settings) {
  switch (settings.name) {
    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (ctx) => const HomeScreen(),
      );
    case AuthSplashScreen.routeName:
      return MaterialPageRoute(
        builder: (ctx) => const AuthSplashScreen(),
      );
    case LogInScreen.routeName:
      return MaterialPageRoute(
        builder: (ctx) => const LogInScreen(),
      );
    case SignUpScreen.routeName:
      return MaterialPageRoute(
        builder: (ctx) => const SignUpScreen(),
      );

    default:
      return MaterialPageRoute(
        builder: (ctx) => const SplashScreen(),
      );
  }
}
