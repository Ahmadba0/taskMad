// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/interior_cladding_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';
import 'package:tasktwo/view/shared_widget/interior_and_landscap/custom_list_browse_more_interior_or_land.dart';
import 'package:tasktwo/view/shared_widget/interior_and_landscap/custom_list_images_interior.dart';
import 'package:tasktwo/view/shared_widget/interior_and_landscap/custom_text_and_seeAll_interior.dart';
import 'package:tasktwo/view/shared_widget/interior_and_landscap/custom_text_browse_interior_land.dart';

class InteriorCladding extends StatefulWidget {
  const InteriorCladding({super.key});

  @override
  State<InteriorCladding> createState() => _InteriorCladdingState();
}

class _InteriorCladdingState extends State<InteriorCladding> {
  @override
  Widget build(BuildContext context) {
    InteriorCladdingController controller =
        Get.put(InteriorCladdingController());
    return Scaffold(
      backgroundColor: theme == 'light' ? AppColors.white1 : AppColors.black,
      body: Container(
        child: ListView(
          children: [
            ///
            ///
            ///
            CustomTextAndSeeallInterior(
              text: '34'.tr,
              onTap: () {},
              color:
                  theme == 'light' ? AppColors.blueHosue : AppColors.blue5_207,
            ),

            ///
            ///
            ///
            CustomListImagesInteriorOrLandscape(
              onTap: () => Get.toNamed(AppRoutes.productDeatils, arguments: {
                'isInterior': true,
                'titleInterior': '65'.tr,
                'nameInterior': '66'.tr,
                'desc1': '67'.tr,
                'desc2': '68'.tr,
                'desc3': '69'.tr,
                'detailsInterior': '71'.tr,
                'color': 5,
                'week': 5,
                // 'titleLand':'76'.tr
                // 'nameLand': '76'.tr,
                // 'detailsLand': '77'.tr,
              }),
              theList: controller.dataHosue,
              isInterior: true,
              colorDesc:
                  theme == 'light' ? AppColors.greyHosue : AppColors.white2,
              colorBorder:
                  theme == 'light' ? AppColors.blueHosue : AppColors.white2,
              colorIcon:
                  theme == 'light' ? AppColors.blueHosue : AppColors.white2,
              colorName:
                  theme == 'light' ? AppColors.blueHosue : AppColors.white1,
              colorTextNearIcon:
                  theme == 'light' ? AppColors.blueHosue : AppColors.white1,
            ),

            ///
            ///
            ///
            CustomTextBrowseInteriorOrLand(
              onTap: () {},
              color:
                  theme == 'light' ? AppColors.blueHosue : AppColors.blue5_207,
            ),

            ///
            ///
            ///
            CustomListBrowseMoreInteriorOrLand(
              theList: controller.catigories,
              isInterior: true,
            )
          ],
        ),
      ),
    );
  }
}
