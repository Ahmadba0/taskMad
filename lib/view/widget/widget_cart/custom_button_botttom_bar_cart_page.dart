import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/cart_controller.dart';
import 'package:tasktwo/view/widget/widget_cart/function_cart/show_the_dialog.dart';

class CustomButtonBotttomBarCartPage extends GetView<CartController> {
  const CustomButtonBotttomBarCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialogForChoosePaymaentMethod(
          controller.primaryColor!,
          controller.secondColor!,
        );
      },
      child: Container(
        alignment: Alignment.center,
        width: 292.w,
        height: 48.h,
        decoration: BoxDecoration(
            color: controller.primaryColor,
            borderRadius: BorderRadius.circular(12.r)),
        child: Text(
          '95'.tr,
          style: TextStyle(
            fontFamily:
                controller.myServices.sharedPreferences.getString('lang') ==
                        'en'
                    ? 'ArticulatMidium'
                    : 'SwisraNormal',
            fontSize: 16.sp,
            color: controller.secondColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
