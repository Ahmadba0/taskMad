import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/product_controller.dart';

class CustomIconInBottomCardProductDetails extends GetView<ProductController> {
  final IconData? icon;
  const CustomIconInBottomCardProductDetails({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: controller.primaryColor,
      size: 35.r,
    );
  }
}
