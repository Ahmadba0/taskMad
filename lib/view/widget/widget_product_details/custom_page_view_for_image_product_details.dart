import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/product_controller.dart';

class CustomPageViewForImageProductDetails extends GetView<ProductController> {
  const CustomPageViewForImageProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.Pcontroller,
      itemCount: controller.images.length,
      itemBuilder: (context, index) {
        // return FadeInImage(
        //   imageErrorBuilder:
        //       (context, error, stackTrace) =>
        //           Image.asset(AppImages.key),
        //   placeholderErrorBuilder:
        //       (context, error, stackTrace) =>
        //           Image.asset(AppImages.key),
        //   placeholder:
        //       const AssetImage(AppImages.key),
        //   image: NetworkImage(
        //       "${AppLink.image}/${controller.images[index]}"),
        //   width: Get.width - 30,
        //   height: Get.height,
        //   fit: BoxFit.fill,
        // );
        return Image.asset(
          controller.images[index],
          fit: BoxFit.fill,
          height: 360,
        );
      },
    );
  }
}
