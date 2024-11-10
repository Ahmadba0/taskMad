import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/product_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class CustomLoveIconProductDetails extends GetView<ProductController> {
  const CustomLoveIconProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: theme == 'light' ? AppColors.white1 : AppColors.black1,
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.favorite,
          color: controller.primaryColor,
        ),
      ),
    );
  }
}
