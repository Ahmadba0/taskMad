import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/business_exhibition_controller.dart';
import 'package:tasktwo/controller/home_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';
import 'package:tasktwo/view/widget/widget_business_exhibition/custom_customers_review_business_p.dart';
import 'package:tasktwo/view/widget/widget_business_exhibition/custom_list_images_businessP.dart';
import 'package:tasktwo/view/widget/widget_business_exhibition/custom_row_title_and_icon.dart';
import 'package:tasktwo/view/widget/widget_business_exhibition/custom_row_title_for_list_images_businessP.dart';

class BusinessExhibition extends StatelessWidget {
  const BusinessExhibition({super.key});

  @override
  Widget build(BuildContext context) {
    BusinessExhibitionController controller =
        Get.put(BusinessExhibitionController());
    return GetBuilder<HomeController>(
      builder: (homeCon) => Scaffold(
        backgroundColor:
            theme == 'light' ? controller.backColor : AppColors.black,
        body: Container(
          padding: const EdgeInsets.only(top: 50, right: 25, left: 25),
          child: Column(
            children: [
              ///
              ///-1
              ///
              CustomRowTitleAndIcon(
                onTap: () => homeCon.back(),
              ),
              SizedBox(
                height: 35.h,
              ),

              ///
              ///
              ///
              CustomRowTitleForListImagesBusinessp(
                onTap: () {},
              ),
              SizedBox(height: 30.h),

              ///
              //--3
              //
              CustomListImagesBusinessp(
                theList: controller.listImages,
              ),
              SizedBox(height: 30.h),
              ////
              ///
              ///--4
              //
              Container(
                color: AppColors.white1,
                height: 3.h,
                width: 291.w,
              ),
              SizedBox(height: 40.h),

              ///
              ///--5
              ///
              const CustomCustomersReviewBusinessP(),
            ],
          ),
        ),
      ),
    );
  }
}
