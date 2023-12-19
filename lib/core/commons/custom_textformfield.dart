// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../theme/spectrum.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  final String? Function(String?)? validator;
  final double height;
  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.validator,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      margin: const EdgeInsets.only(bottom: 15),
      height: height,
      child: TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
            filled: true,
            fillColor: Spectrum.whiteColor,
            hintText: hintText,
            hintStyle: const TextStyle(color: Spectrum.greyColor),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            )),
      ),
    );
  }
}
