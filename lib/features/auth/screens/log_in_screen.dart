import 'package:farmchoice/core/commons/custom_button.dart';
import 'package:farmchoice/core/theme/spectrum.dart';
import 'package:farmchoice/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/commons/custom_textformfield.dart';

class LogInScreen extends StatefulWidget {
  static const routeName = '/log-in';
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  navigateToHomeScreen() {
    Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 25, 10, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 15),
              child: const Text(
                'Log In',
                style: TextStyle(color: Spectrum.greenColor, fontSize: 30),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: const Text(
                'Email',
                style: TextStyle(color: Spectrum.greenColor),
              ),
            ),
            CustomTextFormField(
                controller: emailController,
                hintText: 'mail@example.com',
                validator: (value) {
                  return null;
                }),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: const Text(
                'Password',
                style: TextStyle(color: Spectrum.greenColor),
              ),
            ),
            CustomTextFormField(
                controller: emailController,
                hintText: '............',
                validator: (value) {
                  return null;
                }),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.only(left: 170),
              child: const Text(
                'Forgot Password',
                style: TextStyle(color: Spectrum.blackColor),
              ),
            ),
            const SizedBox(height: 10),
            CustomButton(
              onPressed: navigateToHomeScreen,
              text: 'Log In',
              backgroundColor: Spectrum.greenColor,
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New here?',
                  style: TextStyle(color: Spectrum.blackColor),
                ),
                SizedBox(width: 10),
                Text(
                  'Sign Up',
                  style: TextStyle(color: Spectrum.greenColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
