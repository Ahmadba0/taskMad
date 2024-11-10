// ignore_for_file: unused_local_variable, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/order_placed_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';
import 'package:tasktwo/view/widget/widget_order_placed/custom_bottom_card_order_placed.dart';
import 'package:tasktwo/view/widget/widget_order_placed/custom_container_and_text_order_placed.dart';
import 'package:tasktwo/view/widget/widget_order_placed/custom_text_in_middle_order_placed.dart';

class OrderPlaced extends StatelessWidget {
  const OrderPlaced({super.key});

  @override
  Widget build(BuildContext context) {
    OrderPlacedController controller = Get.put(OrderPlacedController());
    return Scaffold(
      backgroundColor: theme == 'light' ? AppColors.white1 : AppColors.black,
      body: Container(
        child: Column(
          children: [
            ///
            //
            CustomContainerAndTextOrderPlaced(
              text: '83'.tr,
              onPressed: () {
                Get.back();
              },
            ),

            ///
            //
            CustomTextInMiddleOrderPlaced(
              text: '84'.tr,
            ),
            const Spacer(),

            ///
            //
            const CustomBottomCardOrderPlaced(),
          ],
        ),
      ),
    );
  }
}
