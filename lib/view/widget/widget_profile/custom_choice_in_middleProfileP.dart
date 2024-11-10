// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/profile_controller.dart';
import 'package:tasktwo/view/widget/widget_profile/custom_text_and_icon_to_move_profileP.dart';

class CustomChoiceInMiddleprofilep extends GetView<ProfileController> {
  final void Function()? onTapChangeYourInformation;
  final void Function()? onTapChangeLanguage;
  final void Function()? onTapYourPayments;
  final void Function()? onTapNotifications;
  const CustomChoiceInMiddleprofilep(
      {super.key,
      this.onTapChangeYourInformation,
      this.onTapChangeLanguage,
      this.onTapYourPayments,
      this.onTapNotifications});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextAndIconToMoveProfilep(
          text: '51'.tr,
          onTap: onTapChangeYourInformation,
        ),
        SizedBox(height: 20.h),
        CustomTextAndIconToMoveProfilep(
          text: '52'.tr,
          onTap: onTapChangeLanguage,
        ),
        SizedBox(height: 20.h),
        CustomTextAndIconToMoveProfilep(
          text: '53'.tr,
          onTap: onTapYourPayments,
        ),
        SizedBox(height: 20.h),
        CustomTextAndIconToMoveProfilep(
            text: '54'.tr, onTap: onTapNotifications),
      ],
    );
  }
}
