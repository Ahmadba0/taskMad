// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/cart_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/view/widget/widget_cart/custom_bottom_bar_cart_page.dart';
import 'package:tasktwo/view/widget/widget_cart/custom_list_product_in_cart.dart';
import 'package:tasktwo/view/widget/widget_cart/custom_title_and_icon_back.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    CartController controller = Get.put(CartController());
    return Scaffold(
      body: Container(
        // color: AppColors.white1,
        width: MediaQuery.of(context).size.width.w,
        height: MediaQuery.of(context).size.height.h,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            ///
            ///------------------------------1
            ///
            const CustomTitleAndIconBack(),

            ///
            ///------------------------------------2
            ///
            CustomListProductInCart(
              theListProduct: controller.listProductInCart,
            ),

            ///
            ///
            ///
            const CustomBottomBarCartPage(),
          ],
        ),
      ),
    );
  }
}
