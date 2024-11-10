// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class CustomWiFirstTextAuth extends StatelessWidget {
  final String text;
  const CustomWiFirstTextAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // style: TextStyle(
      //   fontFamily: 'Urbane',
      //   color: theme == 'light' ? AppColors.blue1 : AppColors.blue4_164,
      //   fontSize: 36,
      //   height: 1.2,
      //   fontWeight: FontWeight.w900,
      // ),
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 36.sp),
      textAlign: TextAlign.center,
    );
  }
}
