// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/application_style/app_images.dart';
import 'package:tasktwo/core/localization/changeLocal.dart';
import 'package:tasktwo/main.dart';

class CustomListImagesInteriorOrLandscape extends GetView<LocaleController> {
  final List theList;
  final bool isInterior;
  final Color colorBorder;
  final Color colorName;
  final Color colorDesc;
  final Color colorIcon;
  final Color colorTextNearIcon;
  final void Function() onTap;

  const CustomListImagesInteriorOrLandscape({
    super.key,
    required this.theList,
    required this.isInterior,
    required this.colorBorder,
    required this.colorName,
    required this.colorDesc,
    required this.colorIcon,
    required this.colorTextNearIcon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // color: AppColors.white1,
        padding: const EdgeInsets.only(left: 22),
        height: 320.h,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: theList.length,
          itemBuilder: (context, index) => Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: theme == 'light' ? AppColors.white1 : AppColors.black,
                  borderRadius: BorderRadius.circular(25.r),
                  border: Border(
                      left: BorderSide(color: colorBorder, width: 2.w),
                      bottom: BorderSide(color: colorBorder, width: 2.w))),
              width: MediaQuery.of(context).size.width - 50,
              child: Column(
                children: [
                  //
                  //
                  ClipRRect(
                    child: Container(
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.r),
                            topRight: Radius.circular(25.r),
                          ),
                          child: Image.asset(
                            theList[index]['image'],
                            height: 173.h,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  //
                  //
                  SizedBox(height: 10.h),
                  //
                  //
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    alignment: controller.myServices.sharedPreferences
                                .getString('lang') ==
                            'en'
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    child: Text(
                      theList[index]['name'],
                      style: TextStyle(
                        color: colorName,
                        fontFamily: controller.myServices.sharedPreferences
                                    .getString('lang') ==
                                'en'
                            ? 'PoppinsBold'
                            : 'SwisraBold',
                        fontSize: 17.sp,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  //
                  //
                  SizedBox(height: 8.h),
                  //
                  //
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    alignment: controller.myServices.sharedPreferences
                                .getString('lang') ==
                            'en'
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    child: Wrap(
                      children: [
                        Text(
                          theList[index]['desc'],
                          style: TextStyle(
                            color: colorDesc,
                            fontFamily: controller.myServices.sharedPreferences
                                        .getString('lang') ==
                                    'en'
                                ? 'PoppinsRegular'
                                : 'SwisraThin',
                            fontSize: 12.sp,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                  //
                  //
                  SizedBox(height: 10.h),
                  //
                  //
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: Row(
                      children: [
                        //
                        Image.asset(
                          isInterior ? AppImages.cabinet : AppImages.bedroom,
                          width: 23.w,
                          color: colorIcon,
                        ),
                        //
                        Text(
                          isInterior
                              ? '${theList[index]['cabinet']} ${'37'.tr}'
                              : '${theList[index]['bed']} ${'45'.tr}',
                          style: TextStyle(
                            color: colorTextNearIcon,
                            fontFamily: controller.myServices.sharedPreferences
                                        .getString('lang') ==
                                    'en'
                                ? 'PoppinsBold'
                                : 'SwisraThin',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        //
                        const Spacer(),
                        //
                        Image.asset(
                          isInterior ? AppImages.microwave : AppImages.justify,
                          width: 23.w,
                          color: colorIcon,
                        ),
                        //
                        Text(
                          isInterior
                              ? '${theList[index]['microwave']} ${'38'.tr}'
                              : '${theList[index]['Small_Space']} ${'44'.tr}',
                          style: TextStyle(
                            color: colorTextNearIcon,
                            fontFamily: controller.myServices.sharedPreferences
                                        .getString('lang') ==
                                    'en'
                                ? 'PoppinsBold'
                                : 'SwisraThin',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        //
                        const Spacer(),
                        //
                        isInterior
                            ? Image.asset(
                                AppImages.oven,
                                width: 23.w,
                                color: colorIcon,
                              )
                            : Container(),
                        //
                        isInterior
                            ? Text(
                                '${theList[index]['oven']} ${'39'.tr}',
                                style: TextStyle(
                                  color: colorTextNearIcon,
                                  // fontFamily: 'PoppinsBold',
                                  fontFamily: controller
                                              .myServices.sharedPreferences
                                              .getString('lang') ==
                                          'en'
                                      ? 'PoppinsBold'
                                      : 'SwisraThin',
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.start,
                              )
                            : Container(),

                        //
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
