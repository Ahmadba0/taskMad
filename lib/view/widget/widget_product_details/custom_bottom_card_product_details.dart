// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/product_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_add_to_cart_button_bottom_card_product_deatils.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_buy_button_bottom_card_product_deatils.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_icon_in_bottom_card_product_details.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_text_bottom_card_product_details.dart';

class CustomBottomCardProductDetails extends GetView<ProductController> {
  const CustomBottomCardProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      // color: AppColors.white1,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        elevation: 15,
        // color: AppColors.white1,
        child: Container(
          decoration: BoxDecoration(
            // color: Theme.of(context).primaryColorDark,
            color: theme == 'light' ? AppColors.white1 : AppColors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              const CustomIconInBottomCardProductDetails(
                icon: Icons.remove_circle_outline,
              ),
              SizedBox(width: 8.w),
              const CustomTextBottomCardProductDetails(),
              SizedBox(width: 8.w),
              const CustomIconInBottomCardProductDetails(
                icon: Icons.add_circle_outlined,
              ),
              const Spacer(),
              Container(
                child: Row(
                  children: [
                    CustomAddToCartButtonBottomCardProductDeatils(
                      onTap: () {},
                    ),
                    Container(
                      width: 2.w,
                      // height: 50.h,
                      color:
                          theme == 'light' ? AppColors.white1 : AppColors.black,
                    ),
                    CustomBuyButtonBottomCardProductDeatils(
                      onTap: () {
                        Get.toNamed(AppRoutes.confirm, arguments: {
                          'isInterior': controller.isInterior,
                        });
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
