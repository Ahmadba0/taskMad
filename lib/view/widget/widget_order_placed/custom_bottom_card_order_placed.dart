import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/order_placed_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class CustomBottomCardOrderPlaced extends GetView<OrderPlacedController> {
  const CustomBottomCardOrderPlaced({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      color: theme == 'light' ? AppColors.white1 : AppColors.black,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        elevation: 15,
        color: theme == 'light' ? AppColors.white1 : AppColors.black,
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 18, bottom: 18),
                child: InkWell(
                  onTap: () => Get.offAllNamed(AppRoutes.home),
                  child: Container(
                    alignment: Alignment.center,
                    width: 348.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: controller.primaryColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      '85'.tr,
                      style: TextStyle(
                        fontFamily: controller.myServices.sharedPreferences
                                    .getString('lang') ==
                                'en'
                            ? 'Urbane'
                            : 'SwisraNormal',
                        fontSize: 16.sp,
                        color: AppColors.white1,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
