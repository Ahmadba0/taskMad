import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/product_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class CustomBackIconProductDetails extends GetView<ProductController> {
  const CustomBackIconProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: controller.primaryColor,
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: theme == 'light' ? AppColors.white1 : AppColors.black,
        ),
      ),
    );
  }
}
