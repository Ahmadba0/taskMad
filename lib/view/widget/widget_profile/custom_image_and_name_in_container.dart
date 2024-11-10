import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/profile_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class CustomImageAndNameInContainer extends GetView<ProfileController> {
  final String url;
  final String name;
  final String country;
  const CustomImageAndNameInContainer(
      {super.key,
      required this.url,
      required this.name,
      required this.country});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 125.h,
      width: MediaQuery.of(context).size.width.w,
      decoration: BoxDecoration(
        color: theme == 'light' ? controller.primaryColor : AppColors.blue7_176,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(url),
          ),
          SizedBox(width: 15.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontFamily: 'PoppinsRegular',
                  fontSize: 16.sp,
                  color: theme == 'light'
                      ? controller.secondColor
                      : AppColors.black,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    color: theme == 'light'
                        ? controller.secondColor
                        : AppColors.black,
                  ),
                  Text(
                    country,
                    style: TextStyle(
                      fontFamily: 'PoppinsRegular',
                      fontSize: 14.sp,
                      color: theme == 'light'
                          ? controller.secondColor
                          : AppColors.black,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
