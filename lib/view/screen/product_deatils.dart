// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, unused_local_variable, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/product_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_back_icon_product_details.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_bottom_card_product_details.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_box_of_price_product_details.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_controller_under_image_product_details.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_love_icon_product_details.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_name_product_details.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_page_view_for_image_product_details.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_row_icons_and_text_product_details.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_row_of_boxex_under_name_product_details.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_share_icon_product_deatils.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_star_for_rating_product_details.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_star_text_the_rating_product_details.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_text_befor_rating_product_details.dart';
import 'package:tasktwo/view/widget/widget_product_details/custom_text_details_product_details.dart';

class ProductDeatils extends StatelessWidget {
  const ProductDeatils({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController controller = Get.put(ProductController());
    return Scaffold(
      body: Container(
        color: theme == 'light' ? AppColors.white1 : AppColors.black,
        child: Column(
          children: [
            Container(
              height: 360.h,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  ///
                  ///--images
                  ///
                  const CustomPageViewForImageProductDetails(),

                  ///
                  ///--controller
                  ///
                  const CustomControllerUnderImageProductDetails(),

                  ///
                  //
                  Positioned(
                      left: 20.w,
                      right: 20.w,
                      top: 35.h,
                      child: Row(
                        children: [
                          //--back
                          const CustomBackIconProductDetails(),
                          const Spacer(),
                          //--share
                          const CustomShareIconProductDeatils(),
                          SizedBox(width: 10.w),
                          //--love
                          const CustomLoveIconProductDetails(),
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(height: 8.h),

            ///
            ///--under image
            ///
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    // padding: const EdgeInsets.only(left: 8, right: 8),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //
                        CustomTextBeforRatingProductDetails(),
                        //
                        CustomStarForRatingProductDetails(),
                        //
                        CustomStarTextTheRatingProductDetails(),
                        Spacer(),
                        //
                        CustomBoxOfPriceProductDetails(),
                      ],
                    ),
                  ),

                  SizedBox(height: 5.h),
                  //
                  CustomNameProductDetails(
                    text: controller.isInterior
                        ? '${controller.nameInterior}'
                        : '${controller.nameLand}',
                  ),
                  //
                  SizedBox(height: 5.h),
                  const CustomRowOfBoxexUnderNameProductDetails(),
                  //
                  SizedBox(height: 20.h),
                  //
                  CustomNameProductDetails(
                    text: '70'.tr,
                  ),
                  //
                  const CustomTextDetailsProductDetails(),
                  SizedBox(height: 20.h),
                  //
                  const CustomRowIconsAndTextProductDetails(),
                ],
              ),
            ),
            const Spacer(),
            //
            const CustomBottomCardProductDetails(),
          ],
        ),
      ),
    );
  }
}
