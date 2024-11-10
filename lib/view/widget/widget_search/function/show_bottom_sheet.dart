import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/search_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';
import 'package:tasktwo/view/widget/widget_search/custom_all_check_box_and_title_bottom_sheet.dart';
import 'package:tasktwo/view/widget/widget_search/custom_title_bottom_sheet_search_page.dart';

showBottomSheetFunction(context) {
  Get.bottomSheet(
    Container(
      width: MediaQuery.of(context).size.width,
      height: 518.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.r),
        color: theme == 'light' ? AppColors.white1 : AppColors.black1,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 15.h),
          Container(
            width: 50.w,
            height: 7.h,
            color: AppColors.white2,
          ),
          SizedBox(height: 25.h),
          //
          //
          const CustomTitleBottomSheetSearchPage(),
          SizedBox(height: 15.h),
          //
          //
          GetBuilder<SearchhController>(
            builder: (controller) => Column(
              children: [
                ///
                ///--------------------------1
                ///
                CustomAllCheckBoxAndTitleBottomSheet(
                  value: controller.isCheckedBedRoom,
                  text: '89'.tr,
                  onChanged: (value) {
                    controller.changeSelectedValueBedRoom(value);
                  },
                ),
                SizedBox(height: 10.h),

                ///
                ///-------------------------2
                ///
                CustomAllCheckBoxAndTitleBottomSheet(
                  value: controller.isCheckedKitchens,
                  text: '90'.tr,
                  onChanged: (value) {
                    controller.changeSelectedValueKitchens(value);
                  },
                ),
                SizedBox(height: 10.h),

                ///
                ///-------------------------3
                ///
                CustomAllCheckBoxAndTitleBottomSheet(
                  value: controller.isCheckedSettingRooms,
                  text: '91'.tr,
                  onChanged: (value) {
                    controller.changeSelectedValueSettingRooms(value);
                  },
                ),
                SizedBox(height: 10.h),

                ///
                ///-------------------------4
                ///
                CustomAllCheckBoxAndTitleBottomSheet(
                  value: controller.isCheckedFloor,
                  text: '92'.tr,
                  onChanged: (value) {
                    controller.changeSelectedValueFloor(value);
                  },
                ),
                SizedBox(height: 10.h),

                ///
                ///-------------------------5
                ///
                CustomAllCheckBoxAndTitleBottomSheet(
                  value: controller.isCheckedgarden,
                  text: '93'.tr,
                  onChanged: (value) {
                    controller.changeSelectedValueGarden(value);
                  },
                ),
                SizedBox(height: 10.h),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
