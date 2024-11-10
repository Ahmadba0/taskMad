import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/product_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomStarForRatingProductDetails extends GetView<ProductController> {
  const CustomStarForRatingProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.star_rate_rounded,
      color: AppColors.yellow,
      size: 25,
    );
  }
}
