// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class CustomWiGoToAnotherPageLoginOrSignupAuth extends StatelessWidget {
  final String textOne;
  final String texttwo;
  final void Function()? onTap;
  const CustomWiGoToAnotherPageLoginOrSignupAuth(
      {super.key, required this.textOne, required this.texttwo, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textOne,
            style: TextStyle(
              // fontFamily: 'Poppins',
              color: theme == 'light' ? AppColors.black : AppColors.blue5_207,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              texttwo,
              style: TextStyle(
                  // fontFamily: 'Poppins',
                  color: theme == 'light' ? AppColors.blue1 : AppColors.blue1,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}
