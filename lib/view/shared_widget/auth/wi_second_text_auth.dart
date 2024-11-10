// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomWiSecondTextAuth extends StatelessWidget {
  final String text;
  const CustomWiSecondTextAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // style: TextStyle(
      //   fontFamily: 'Urbane',
      //   color: theme == 'light' ? AppColors.black : AppColors.white1,
      //   fontSize: 14,
      //   fontWeight: FontWeight.w700,
      // ),
      style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 14.sp),
      textAlign: TextAlign.center,
    );
  }
}
