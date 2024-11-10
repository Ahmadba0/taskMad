import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/cart_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/view/widget/widget_cart/custom_button_botttom_bar_cart_page.dart';
import 'package:tasktwo/view/widget/widget_cart/custom_text_total_price_and_price_cart_page.dart';

class CustomBottomBarCartPage extends GetView<CartController> {
  const CustomBottomBarCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: MediaQuery.of(context).size.width.h,
      decoration: BoxDecoration(
          color: controller.secondColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Card(
        elevation: 10,
        color: controller.secondColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomTextTotalPriceAndPriceCartPage(),
            CustomButtonBotttomBarCartPage(),
          ],
        ),
      ),
    );
  }
}
