import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/product_controller.dart';

class CustomNameProductDetails extends GetView<ProductController> {
  final String text;
  const CustomNameProductDetails({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:
          controller.myServices.sharedPreferences.getString('lang') == 'en'
              ? Alignment.centerLeft
              : Alignment.centerRight,
      child: Text(
        text,
        style: TextStyle(
          fontFamily:
              controller.myServices.sharedPreferences.getString('lang') == 'en'
                  ? 'ArticulatMidium'
                  : 'SwisraNormal',
          fontSize: 30.sp,
          color: controller.primaryColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
