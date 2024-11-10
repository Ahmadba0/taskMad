import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/search_controller.dart';

class CustomCheckedBoxBottomSheetSearchPage extends GetView<SearchhController> {
  final void Function(bool?)? onChanged;
  final bool value;
  const CustomCheckedBoxBottomSheetSearchPage(
      {super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      onChanged: onChanged,
      activeColor: controller.primaryColor,
      focusColor: controller.primaryColor,
      side: BorderSide(color: controller.primaryColor!, width: 2),
    );
  }
}
