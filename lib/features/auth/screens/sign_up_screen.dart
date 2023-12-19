import 'package:farmchoice/core/theme/spectrum.dart';
import 'package:flutter/material.dart';

import '../../../core/commons/custom_button.dart';
import '../../../core/commons/custom_textformfield.dart';
import '../../home/screens/home_screen.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/sign-up';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  navigateToHomeScreen() {
    Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Spectrum.greenColor2,
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
                'Sign Up',
                style: TextStyle(color: Spectrum.whiteColor, fontSize: 30),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: const Text(
                'Name',
                style: TextStyle(color: Spectrum.whiteColor),
              ),
            ),
            CustomTextFormField(
                controller: emailController,
                hintText: 'John Doe',
                validator: (value) {
                  return null;
                }),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: const Text(
                'Email',
                style: TextStyle(color: Spectrum.whiteColor),
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
                style: TextStyle(color: Spectrum.whiteColor),
              ),
            ),
            CustomTextFormField(
                controller: emailController,
                hintText: '*************',
                validator: (value) {
                  return null;
                }),
            const SizedBox(height: 5),
            const SizedBox(height: 10),
            CustomButton(
              onPressed: navigateToHomeScreen,
              text: 'Sign Up',
              backgroundColor: Spectrum.whiteColor,
              textColor: Spectrum.greenColor,
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(color: Spectrum.whiteColor),
                ),
                SizedBox(width: 10),
                Text(
                  'Log In',
                  style: TextStyle(
                      color: Spectrum.whiteColor, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
