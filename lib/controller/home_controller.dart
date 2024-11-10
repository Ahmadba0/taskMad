// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/services/services.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController? searchController;
  TabController? tabController;
  Color bottomBarColor = AppColors.blueHosue;
  int pageIndex = 1;
  MyServices myServices = Get.find();
  //my method
  changePage(namePage) {
    if (namePage == 'Home') {
      pageIndex = 1;
    }
    // else if (namePage == 'Search') {
    //   pageIndex = 2;
    // }
    else if (namePage == 'Profile') {
      pageIndex = 3;
      bottomBarColor = AppColors.blueHosue;
    } else if (namePage == 'BusinessExhibition') {
      pageIndex = 4;
    }
    print(pageIndex);
    update();
  }

  back() {
    if (pageIndex == 2 || pageIndex == 3) {
      pageIndex = 1;
    } else if (pageIndex == 4) {
      pageIndex = 3;
    }
    update();
  }

  //init
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    searchController = TextEditingController();
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    tabController!.addListener(
      () {
        print('tab controller ${tabController!.index}');
        tabController!.index == 0
            ? bottomBarColor = AppColors.blueHosue
            : tabController!.index == 1
                ? bottomBarColor = AppColors.greenOneHosue
                : bottomBarColor = AppColors.orange;
        update();
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchController!.dispose();
    tabController!.dispose();
  }
}
