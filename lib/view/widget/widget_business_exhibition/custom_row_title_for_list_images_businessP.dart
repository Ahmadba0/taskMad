// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/business_exhibition_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomRowTitleForListImagesBusinessp
    extends GetView<BusinessExhibitionController> {
  final void Function()? onTap;
  const CustomRowTitleForListImagesBusinessp({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        children: [
          Text(
            '34'.tr,
            style: TextStyle(
              fontFamily:
                  controller.myServices.sharedPreferences.getString('lang') ==
                          'en'
                      ? 'ArticulatMidium'
                      : 'SwisraNormal',
              color: AppColors.white1,
              fontSize:
                  controller.myServices.sharedPreferences.getString('lang') ==
                          'en'
                      ? 22.sp
                      : 20.sp,
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '35'.tr,
                  style: TextStyle(
                    fontFamily: controller.myServices.sharedPreferences
                                .getString('lang') ==
                            'en'
                        ? 'ArticulatMidium'
                        : 'SwisraNormal',
                    color: AppColors.cyanHosue,
                    fontSize: controller.myServices.sharedPreferences
                                .getString('lang') ==
                            'en'
                        ? 18.sp
                        : 13.sp,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.cyanHosue,
                  size: 18,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
