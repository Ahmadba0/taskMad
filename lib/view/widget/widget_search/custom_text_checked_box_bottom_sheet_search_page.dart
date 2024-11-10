import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/search_controller.dart';

class CustomTextCheckedBoxBottomSheetSearchPage
    extends GetView<SearchhController> {
  final String text;
  const CustomTextCheckedBoxBottomSheetSearchPage(
      {super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily:
            controller.myServices.sharedPreferences.getString('lang') == 'en'
                ? 'ArticulatMidium'
                : 'SwisraNormal',
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: controller.primaryColor,
      ),
    );
  }
}
