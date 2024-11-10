// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/function/dialog_function.dart';
import 'package:tasktwo/core/localization/changeLocal.dart';
import 'package:tasktwo/main.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    LocaleController localeController = Get.find();
    // final ThemeController themeController = Get.put(ThemeController());
    return Scaffold(
      //backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('1'.tr),
              ElevatedButton(
                  onPressed: () {
                    localeController.changeLanguage('ar');
                    setState(() {});
                  },
                  child: Text('ar')),
              ElevatedButton(
                  onPressed: () {
                    localeController.changeLanguage('en');
                    setState(() {});
                  },
                  child: Text('en')),

              ///
              ///
              ///
              // localeController.myServices.sharedPreferences
              //             .getString('theme') ==
              //         'light'
              //     ? ElevatedButton(
              //         onPressed: () {
              //           localeController.changeTheme('night');
              //           setState(() {});
              //         },
              //         child: Text('night'))
              //     : ElevatedButton(
              //         onPressed: () {
              //           localeController.changeTheme('light');
              //           setState(() {});
              //         },
              //         child: Text('light')),

              // ElevatedButton(
              //     onPressed: () {
              //       themeController.toggleTheme();
              //       setState(() {});
              //     },
              //     child: Text("تغير")),
              // IconButton(
              //     onPressed: () {
              //       themeController.toggleTheme();
              //     },
              //     icon: Icon(Icons.abc)),

              // GetBuilder<ThemeController>(builder: (controller) {
              //   return Container(
              //     width: 200,
              //     height: 200,
              //     color: controller.isDarkMode.value
              //         ? Theme.of(context).primaryColor
              //         : Colors.blue,
              //     child: Center(
              //       child: Text(
              //         controller.isDarkMode.value
              //             ? 'الوضع الليلي'
              //             : 'الوضع النهاري',
              //         style: TextStyle(color: Colors.white),
              //       ),
              //     ),
              //   );
              // }),
            ],
          ),
        ),
      ),
    );
  }
}
