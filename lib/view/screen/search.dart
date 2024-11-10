import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/search_controller.dart';
import 'package:tasktwo/view/widget/widget_search/custom_grid_view_search_page.dart';
import 'package:tasktwo/view/widget/widget_search/custom_title_and_text_form_field_search_page.dart';

class SearchP extends StatelessWidget {
  const SearchP({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SearchhController());
    return Scaffold(
        body: ListView(
      children: [
        ///
        ///--1
        ///
        CustomTitleAndTextFormFieldSearchPage(),

        ///
        ///--2
        ///
        CustomGridViewSearchPage(),
      ],
    ));
  }
}
