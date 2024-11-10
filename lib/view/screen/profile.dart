// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/home_controller.dart';
import 'package:tasktwo/controller/profile_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/application_style/app_images.dart';
import 'package:tasktwo/main.dart';
import 'package:tasktwo/view/widget/widget_profile/custom_choice_in_middleProfileP.dart';
import 'package:tasktwo/view/widget/widget_profile/custom_image_and_name_in_container.dart';
import 'package:tasktwo/view/widget/widget_profile/custom_row_texts_choices_profileP.dart';
import 'package:tasktwo/view/widget/widget_profile/custom_title_nad_back_icon_profileP.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.put(ProfileController());
    return GetBuilder<HomeController>(
      builder: (homeCon) => Scaffold(
        backgroundColor: theme == 'light' ? AppColors.white1 : AppColors.black,
        body: Container(
          padding: const EdgeInsets.only(top: 50, right: 25, left: 25),
          child: Column(
            children: [
              ///
              ///--1
              ///
              CustomTitleNadBackIconProfilep(
                onPressed: () => homeCon.back(),
              ),
              SizedBox(height: 20.h),

              ///
              ///--2
              ///
              const CustomImageAndNameInContainer(
                url: AppImages.person,
                name: 'AhmadBarakat',
                country: 'Syria',
              ),
              SizedBox(height: 55.h),

              ///
              ///--3
              ///
              CustomChoiceInMiddleprofilep(
                onTapChangeYourInformation: () {},
                onTapChangeLanguage: () {},
                onTapYourPayments: () {
                  Get.toNamed(AppRoutes.cartPage);
                },
                onTapNotifications: () {},
              ),
              const Spacer(),

              ///
              ///--4
              ///
              CustomRowTextsChoicesProfilep(
                onTapBusinessExhibition: () {
                  homeCon.changePage('BusinessExhibition');
                },
                onTapWhatsapp: () {},
                onTapEmail: () {},
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
