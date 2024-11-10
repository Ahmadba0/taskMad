import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/product_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomTextDetailsProductDetails extends GetView<ProductController> {
  const CustomTextDetailsProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      child: Text(
        controller.isInterior
            ? controller.detailsInterior
            : controller.detailsLand,
        style: TextStyle(
          fontFamily:
              controller.myServices.sharedPreferences.getString('lang') == 'en'
                  ? 'ArticulatMidium'
                  : 'SwisraNormal',
          fontSize: 12.sp,
          color: AppColors.grey1,
        ),
      ),
    );
  }
}
