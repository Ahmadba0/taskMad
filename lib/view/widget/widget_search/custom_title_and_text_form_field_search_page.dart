import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/search_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';
import 'package:tasktwo/view/widget/widget_search/custom_icon_back_and_title_search_page.dart';
import 'package:tasktwo/view/widget/widget_search/custom_text_form_field_seach_page.dart';

class CustomTitleAndTextFormFieldSearchPage extends GetView<SearchhController> {
  const CustomTitleAndTextFormFieldSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
          height: 200.h,
          color: theme == 'light' ? AppColors.white1 : AppColors.black,
          child: const Column(
            children: [
              CustomIconBackAndTitleSearchPage(),
              CustomTextFormFieldSeachPage(),
            ],
          ),
        ),
      ],
    );
  }
}
