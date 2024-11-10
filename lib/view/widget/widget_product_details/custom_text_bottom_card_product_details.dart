import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/product_controller.dart';

class CustomTextBottomCardProductDetails extends GetView<ProductController> {
  const CustomTextBottomCardProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '2',
      style: TextStyle(
        fontFamily: 'ArticulatMidium',
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: controller.primaryColor,
      ),
    );
  }
}
