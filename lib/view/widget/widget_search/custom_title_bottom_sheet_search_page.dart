import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/search_controller.dart';

class CustomTitleBottomSheetSearchPage extends GetView<SearchhController> {
  const CustomTitleBottomSheetSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '88'.tr,
      style: TextStyle(
        fontFamily:
            controller.myServices.sharedPreferences.getString('lang') == 'en'
                ? 'ArticulatMidium'
                : 'SwisraNormal',
        fontSize: 32.sp,
        fontWeight: FontWeight.w700,
        color: controller.primaryColor,
      ),
    );
  }
}
