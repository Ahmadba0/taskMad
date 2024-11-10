// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/localization/changeLocal.dart';

class CustomTextAndSeeallInterior extends GetView<LocaleController> {
  final String text;
  final void Function()? onTap;
  final Color color;
  const CustomTextAndSeeallInterior(
      {super.key, required this.text, this.onTap, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 22, left: 22, top: 10, bottom: 8),
      child: Row(
        children: [
          Text(
            // 'Recently Added',
            text,
            style: TextStyle(
              fontFamily:
                  controller.myServices.sharedPreferences.getString('lang') ==
                          'en'
                      ? 'ArticulatMidium'
                      : 'SwisraNormal',
              color: color,
              fontSize: 22.sp,
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
                        : 'SwisraThin',
                    color: color,
                    fontSize: 18.sp,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: color,
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
