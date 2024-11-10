import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/cart_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomTextTotalPriceAndPriceCartPage extends GetView<CartController> {
  const CustomTextTotalPriceAndPriceCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '96'.tr,
          style: TextStyle(
            fontFamily:
                controller.myServices.sharedPreferences.getString('lang') ==
                        'en'
                    ? 'ArticulatMidium'
                    : 'SwisraNormal',
            fontSize:
                controller.myServices.sharedPreferences.getString('lang') ==
                        'en'
                    ? 16.sp
                    : 13.sp,
            color: controller.primaryColor,
          ),
        ),
        Text(
          '7000 \$',
          style: TextStyle(
            fontFamily: 'ArticulatMidium',
            fontSize:
                controller.myServices.sharedPreferences.getString('lang') ==
                        'en'
                    ? 24.sp
                    : 20.sp,
            color: controller.primaryColor,
          ),
        ),
      ],
    );
  }
}
