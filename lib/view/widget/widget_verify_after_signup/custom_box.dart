// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:tasktwo/controller/verify_after_signup_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class CustomBox extends GetView<VerifyAfterSignupController> {
  final void Function()? onTap;
  final String textEmail;
  const CustomBox({super.key, this.onTap, required this.textEmail});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 415,
      width: 366,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: theme == 'light'
            ? AppColors.white2
            : Color.fromARGB(255, 30, 30, 30),
      ),
      child: Column(
        children: [
          SizedBox(height: 5),

          ///
          ///--1
          ///

          Text(
            '24'.tr,
            style: TextStyle(
              // fontFamily: 'Urban/e',
              fontFamily:
                  controller.myServices.sharedPreferences.getString('lang') ==
                          'en'
                      ? 'Urbane'
                      : 'SwisraBold',
              color: theme == 'light' ? AppColors.blue1 : AppColors.blue5_207,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: Get.height / 18),

          ///
          ///--2
          ///
          Text(
            // '25 : $textEmail'.tr,
            '${'25'.tr}$textEmail',
            style: TextStyle(
              fontFamily:
                  controller.myServices.sharedPreferences.getString('lang') ==
                          'en'
                      ? 'Urbane'
                      : 'SwisraNormal',
              color: theme == 'light' ? AppColors.black : AppColors.white1,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),

          ///
          ///--3
          ///
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: OTPTextField(
              length: 6,
              fieldStyle: FieldStyle.underline,

              otpFieldStyle: OtpFieldStyle(
                // borderColor: theme == 'light'
                //     ? Colors.black
                //     : AppColors.white1,

                enabledBorderColor:
                    theme == 'light' ? AppColors.black : AppColors.white1,
                backgroundColor:
                    theme == 'light' ? AppColors.white2 : AppColors.black1,
              ),
              // controller: otpController,

              width: MediaQuery.of(context).size.width,
              fieldWidth: 20,
              textFieldAlignment: MainAxisAlignment.spaceEvenly,
              onChanged: (value) {},
              onCompleted: (String numInput) {
                print(numInput);

                //otpController!.clear();
              },
            ),
          ),
          SizedBox(height: Get.height / 17),

          ///
          ///--4
          ///
          GetBuilder<VerifyAfterSignupController>(
            builder: (controller) => Text(
              '${controller.minutes} : ${controller.second}',
              style: TextStyle(
                fontFamily: 'Urbane',
                color: theme == 'light' ? AppColors.black : AppColors.white1,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: Get.height / 25),

          ///
          ///--5
          ///
          InkWell(
            onTap: onTap,
            child: Text(
              '26'.tr,
              style: TextStyle(
                  fontFamily: controller.myServices.sharedPreferences
                              .getString('lang') ==
                          'en'
                      ? 'Urbane'
                      : 'SwisraNormal',
                  color: theme == 'light' ? AppColors.black : AppColors.white1,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
