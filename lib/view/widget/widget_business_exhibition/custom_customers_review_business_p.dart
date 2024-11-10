import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/business_exhibition_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomCustomersReviewBusinessP
    extends GetView<BusinessExhibitionController> {
  const CustomCustomersReviewBusinessP({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 256.h,
      width: 366.w,
      decoration: BoxDecoration(
          color: AppColors.blue3, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.contact_mail,
            color: AppColors.white1,
            size: 40,
          ),
          SizedBox(width: 10.w),
          Text(
            '59'.tr,
            style: TextStyle(
                fontFamily:
                    controller.myServices.sharedPreferences.getString('lang') ==
                            'en'
                        ? 'ArticulatMidium'
                        : 'SwisraNormal',
                fontSize: 18.sp,
                color: AppColors.white1),
          )
        ],
      ),
    );
  }
}
