// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/land_scaonig_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';
import 'package:tasktwo/view/shared_widget/interior_and_landscap/custom_list_browse_more_interior_or_land.dart';
import 'package:tasktwo/view/shared_widget/interior_and_landscap/custom_list_images_interior.dart';
import 'package:tasktwo/view/shared_widget/interior_and_landscap/custom_text_and_seeAll_interior.dart';
import 'package:tasktwo/view/shared_widget/interior_and_landscap/custom_text_browse_interior_land.dart';

class LandScaoing extends StatefulWidget {
  const LandScaoing({super.key});

  @override
  State<LandScaoing> createState() => _LandScaoingState();
}

class _LandScaoingState extends State<LandScaoing> {
  @override
  Widget build(BuildContext context) {
    LandScaoingController controller = Get.put(LandScaoingController());
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
              color: theme == 'light'
                  ? AppColors.greenOneHosue
                  : AppColors.blue4_164,
            ),

            ///
            ///
            ///
            CustomListImagesInteriorOrLandscape(
              onTap: () => Get.toNamed(AppRoutes.productDeatils, arguments: {
                'isInterior': false,

                //  'titleInterior': '65'.tr,
                // 'nameInterior': '66'.tr,
                'desc1': '67'.tr,
                'desc2': '68'.tr,
                'desc3': '69'.tr,
                // 'detailsInterior': '71'.tr,
                'color': 5,
                'week': 5,
                'titleLand': '76'.tr,
                'nameLand': '76'.tr,
                'detailsLand': '77'.tr,
              }),
              theList: controller.dataHosue,
              isInterior: false,
              colorDesc: AppColors.greenTwoHosue,
              colorBorder: AppColors.greenOneHosue,
              colorIcon: AppColors.greenOneHosue,
              colorName: AppColors.greenOneHosue,
              colorTextNearIcon: AppColors.greenOneHosue,
            ),

            ///
            ///
            ///
            CustomTextBrowseInteriorOrLand(
              onTap: () {},
              color: theme == 'light'
                  ? AppColors.greenOneHosue
                  : AppColors.blue4_164,
            ),

            ///
            ///
            ///
            CustomListBrowseMoreInteriorOrLand(
              theList: controller.catigories,
              isInterior: false,
            )
          ],
        ),
      ),
    );
  }
}
