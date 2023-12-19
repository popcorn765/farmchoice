// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:farmchoice/core/theme/spectrum.dart';

class Crop extends StatelessWidget {
  final String cropName;
  final String cropImageUrl;
  const Crop({
    Key? key,
    required this.cropName,
    required this.cropImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Spectrum.greyColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              cropImageUrl,
              height: 30,
            ),
          ),
        ),
        Container(
          width: 100,
          child: Text(
            cropName,
            style: const TextStyle(
              color: Spectrum.blackColor,
              fontSize: 15,
            ),
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
