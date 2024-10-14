// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomWiTextForgetPasswordLogin extends StatelessWidget {
  final void Function()? onTap;
  const CustomWiTextForgetPasswordLogin({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerRight,
        child: Text(
          'Forget your password?',
          style: TextStyle(
            fontFamily: 'PoppinsBold',
            color: AppColors.blue1,
            fontSize: 14,
            //fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
