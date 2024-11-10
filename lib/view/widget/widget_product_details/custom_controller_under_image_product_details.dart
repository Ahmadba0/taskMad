import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tasktwo/controller/product_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomControllerUnderImageProductDetails
    extends GetView<ProductController> {
  const CustomControllerUnderImageProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 160.w,
      child: SmoothPageIndicator(
        controller: controller.Pcontroller,
        count: controller.images.length,
        axisDirection: Axis.horizontal,
        effect: ScrollingDotsEffect(
          spacing: 8,
          radius: 10.r,
          dotWidth: 12.h,
          dotHeight: 12.h,
          paintStyle: PaintingStyle.fill,
          strokeWidth: 1.5.w,
          dotColor: AppColors.white2,
          activeDotColor: controller.primaryColor!,
        ),
      ),
    );
  }
}
