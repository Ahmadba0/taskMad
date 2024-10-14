// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomWiSecondTextAuth extends StatelessWidget {
  final String text;
  const CustomWiSecondTextAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Urbane',
        color: AppColors.black,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      textAlign: TextAlign.center,
    );
  }
}
