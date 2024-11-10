import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/home_controller.dart';
import 'package:tasktwo/view/screen/interior_cladding.dart';
import 'package:tasktwo/view/screen/land_scaoing.dart';
import 'package:tasktwo/view/screen/trends.dart';

class CustomPagesInBodyHome extends GetView<HomeController> {
  const CustomPagesInBodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller.tabController,
      children: const [
        InteriorCladding(),
        LandScaoing(),
        Trends(),
      ],
    );
  }
}
