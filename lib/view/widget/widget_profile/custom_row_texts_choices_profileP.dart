// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/view/widget/widget_profile/custom_text_under_page_to_move_profileP.dart';

class CustomRowTextsChoicesProfilep extends StatelessWidget {
  final void Function()? onTapBusinessExhibition;
  final void Function()? onTapWhatsapp;
  final void Function()? onTapEmail;
  const CustomRowTextsChoicesProfilep(
      {super.key,
      this.onTapBusinessExhibition,
      this.onTapWhatsapp,
      this.onTapEmail});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomTextUnderPageToMoveProfilep(
            text: '55'.tr, onTap: onTapBusinessExhibition),
        CustomTextUnderPageToMoveProfilep(
          text: '56'.tr,
          onTap: onTapWhatsapp,
        ),
        CustomTextUnderPageToMoveProfilep(
          text: '57'.tr,
          onTap: onTapEmail,
        ),
      ],
    );
  }
}
