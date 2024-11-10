import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/product_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class CustomBuyButtonBottomCardProductDeatils
    extends GetView<ProductController> {
  final void Function()? onTap;
  const CustomBuyButtonBottomCardProductDeatils({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 130.w,
        height: 50.h,
        decoration: BoxDecoration(
          color: controller.primaryColor,
          borderRadius:
              controller.myServices.sharedPreferences.getString('lang') == 'en'
                  ? const BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    )
                  : const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
        ),
        child: Text(
          '75'.tr,
          style: TextStyle(
            fontFamily: 'Urbane',
            fontSize: 16.sp,
            color: theme == 'light' ? AppColors.white1 : AppColors.black,
          ),
        ),
      ),
    );
  }
}
