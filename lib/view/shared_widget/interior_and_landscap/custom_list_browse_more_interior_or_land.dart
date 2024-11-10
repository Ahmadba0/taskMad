import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/localization/changeLocal.dart';
import 'package:tasktwo/main.dart';

class CustomListBrowseMoreInteriorOrLand extends GetView<LocaleController> {
  final List theList;
  final bool isInterior;
  const CustomListBrowseMoreInteriorOrLand(
      {super.key, required this.theList, required this.isInterior});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: AppColors.white1,
      padding: const EdgeInsets.only(left: 22),
      height: 120.h,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: theList.length,
          itemBuilder: (context, index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: CircleAvatar(
                      backgroundColor: theme == 'light'
                          ? AppColors.whiteTwoHosue
                          : AppColors.black1,
                      radius: 35,
                      child: Image.asset(
                        theList[index]['image'],
                        width: 40,
                        color: theme == 'light'
                            ? isInterior
                                ? AppColors.blueHosue
                                : AppColors.greenOneHosue
                            : AppColors.white2,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    '${theList[index]['name']}',
                    style: TextStyle(
                      // fontFamily: 'PoppinsBold',
                      fontFamily: controller.myServices.sharedPreferences
                                  .getString('lang') ==
                              'en'
                          ? 'PoppinsBold'
                          : 'SwisraThin',
                      fontSize: 12.5.sp,
                      color:
                          theme == 'light' ? AppColors.black : AppColors.white1,
                    ),
                  )
                ],
              )),
    );
  }
}
