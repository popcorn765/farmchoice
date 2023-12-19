import 'package:farmchoice/core/theme/spectrum.dart';
import 'package:farmchoice/features/auth/screens/log_in_screen.dart';
import 'package:farmchoice/features/auth/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/commons/custom_button.dart';

class AuthSplashScreen extends StatelessWidget {
  static const routeName = '/auth-screen';
  const AuthSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void navigateToLogInScreen() {
      Navigator.of(context).pushNamed(LogInScreen.routeName);
    }

    void navigateToSignUpScreen() {
      Navigator.of(context).pushNamed(SignUpScreen.routeName);
    }

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 450,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Spectrum.whiteColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                )),
            child: const Text(
              'FARM CHOICE',
              style: TextStyle(
                fontSize: 25,
                color: Spectrum.greenColor,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Spectrum.greenColor,
              ),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    onPressed: navigateToLogInScreen,
                    text: 'Log In',
                    backgroundColor: Spectrum.greenColor2,
                  ),
                  const SizedBox(height: 10),
                  CustomButton(
                    onPressed: navigateToSignUpScreen,
                    text: 'Sign Up',
                    textColor: Spectrum.greenColor,
                  ),
                ],
              )),
            ),
          )
        ],
      ),
    );
  }
}
