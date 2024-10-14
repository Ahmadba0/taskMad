// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomWiTextFormFieldAuth extends StatelessWidget {
  final String hint;
  final bool? isObsecureText;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final bool? isNumber;
  final TextEditingController controller;
  const CustomWiTextFormFieldAuth(
      {super.key,
      required this.hint,
      this.isObsecureText,
      this.suffixIcon,
      this.focusNode,
      this.isNumber,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: AppColors.white2, borderRadius: BorderRadius.circular(12)),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        keyboardType:
            isNumber == true ? TextInputType.number : TextInputType.name,
        obscureText: isObsecureText == true ? true : false,
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        style: TextStyle(
          fontFamily: 'PoppinsMedium',
          color: AppColors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hint,
          hintStyle: TextStyle(
            fontFamily: 'PoppinsMedium',
            color: AppColors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.white2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.blue1, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.red),
          ),
        ),
      ),
    );
  }
}
