// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/product_controller.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_box_under_name_product_details.dart';

class CustomRowOfBoxexUnderNameProductDetails
    extends GetView<ProductController> {
  const CustomRowOfBoxexUnderNameProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          CustomBoxUnderNameProductDetails(text: controller.desc1),
          SizedBox(width: 8.w),
          CustomBoxUnderNameProductDetails(text: controller.desc2),
          SizedBox(width: 8.w),
          CustomBoxUnderNameProductDetails(text: controller.desc3),
        ],
      ),
    );
  }
}
