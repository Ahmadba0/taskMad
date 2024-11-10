// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/search_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class CustomGridViewSearchPage extends StatelessWidget {
  const CustomGridViewSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height.h - 210.h,
      child: GetBuilder<SearchhController>(
        builder: (controller) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          color: theme == 'light' ? AppColors.white1 : AppColors.black,
          width: MediaQuery.of(context).size.width.w,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),

            ///
            ///-----------------------------
            ///
            itemCount: controller.listShowImages.length,
            itemBuilder: (BuildContext context, int index) {
              ///
              ///---------------------------
              ///
              return Container(
                width: 111.w,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: Image.asset(
                      controller.listShowImages[index],
                      height: 106.h,
                      width: 111.w,
                      fit: BoxFit.cover,
                    )),
              );
            },
          ),
        ),
      ),
    );
  }
}
