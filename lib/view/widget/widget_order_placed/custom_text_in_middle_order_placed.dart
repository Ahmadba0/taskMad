import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/order_placed_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomTextInMiddleOrderPlaced extends GetView<OrderPlacedController> {
  final String text;
  const CustomTextInMiddleOrderPlaced({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Column(
        children: [
          SizedBox(height: 150.h),
          Container(
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                  color: AppColors.greySearch,
                  fontSize: 18.sp,
                  fontFamily: controller.myServices.sharedPreferences
                              .getString('lang') ==
                          'en'
                      ? 'ArticulatMidium'
                      : 'SwisraNormal'),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
