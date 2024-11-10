import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:tasktwo/controller/business_exhibition_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomRowTitleAndIcon extends GetView<BusinessExhibitionController> {
  final void Function()? onTap;
  const CustomRowTitleAndIcon({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onTap,
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.white1,
          ),
        ),
        Text(
          '58'.tr,
          style: TextStyle(
            fontFamily:
                controller.myServices.sharedPreferences.getString('lang') ==
                        'en'
                    ? 'ArticulatMidium'
                    : 'SwisraNormal',
            fontSize: 28.sp,
            color: AppColors.white1,
          ),
        )
      ],
    );
  }
}
