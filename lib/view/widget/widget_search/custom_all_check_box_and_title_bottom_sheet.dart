import 'package:flutter/material.dart';
import 'package:tasktwo/view/widget/widget_search/custom_checked_box_bottom_sheet_search_page.dart';
import 'package:tasktwo/view/widget/widget_search/custom_text_checked_box_bottom_sheet_search_page.dart';

class CustomAllCheckBoxAndTitleBottomSheet extends StatelessWidget {
  final bool value;
  final void Function(bool?)? onChanged;
  final String text;
  const CustomAllCheckBoxAndTitleBottomSheet(
      {super.key, this.onChanged, required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomCheckedBoxBottomSheetSearchPage(
          value: value,
          onChanged: onChanged,
        ),
        CustomTextCheckedBoxBottomSheetSearchPage(text: text),
      ],
    );
  }
}
