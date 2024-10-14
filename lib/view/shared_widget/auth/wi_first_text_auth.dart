// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomWiFirstTextAuth extends StatelessWidget {
  final String text;
  const CustomWiFirstTextAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Urbane',
        color: AppColors.blue1,
        fontSize: 36,
        height: 1.2,
        fontWeight: FontWeight.w900,
      ),
      textAlign: TextAlign.center,
    );
  }
}
