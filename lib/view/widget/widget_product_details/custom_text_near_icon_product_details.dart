import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/product_controller.dart';

class CustomTextNearIconProductDetails extends GetView<ProductController> {
  final String text;
  const CustomTextNearIconProductDetails({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily:
            controller.myServices.sharedPreferences.getString('lang') == 'en'
                ? 'ArticulatMidium'
                : 'SwisraNormal',
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: controller.primaryColor,
      ),
    );
  }
}
