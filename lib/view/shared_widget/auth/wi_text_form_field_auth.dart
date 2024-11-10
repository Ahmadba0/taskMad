// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:tasktwo/controller/login_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/localization/changeLocal.dart';
import 'package:tasktwo/main.dart';

class CustomWiTextFormFieldAuth extends GetView<LocaleController> {
  final String hint;
  final bool? isObsecureText;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final bool? isNumber;
  final TextEditingController controllerr;
  const CustomWiTextFormFieldAuth(
      {super.key,
      required this.hint,
      this.isObsecureText,
      this.suffixIcon,
      this.focusNode,
      this.isNumber,
      required this.controllerr});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: theme == 'light' ? AppColors.white2 : AppColors.black1,
          borderRadius: BorderRadius.circular(12)),
      child: TextFormField(
        controller: controllerr,
        focusNode: focusNode,
        keyboardType:
            isNumber == true ? TextInputType.number : TextInputType.name,
        obscureText: isObsecureText == true ? true : false,
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        style: TextStyle(
          fontFamily:
              controller.myServices.sharedPreferences.getString('lang') == 'en'
                  ? 'PoppinsMedium'
                  : 'SwisraNormal',
          color: theme == 'light' ? AppColors.black : AppColors.blue5_207,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hint,
          hintStyle: TextStyle(
            fontFamily:
                controller.myServices.sharedPreferences.getString('lang') ==
                        'en'
                    ? 'PoppinsMedium'
                    : 'SwisraNormal',
            color: theme == 'light' ? AppColors.black : AppColors.blue5_207,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                  color:
                      theme == 'light' ? AppColors.white2 : AppColors.black1)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                color: theme == 'light' ? AppColors.blue1 : AppColors.blue5_207,
                width: 2),
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
