// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:tasktwo/core/application_style/app_color.dARt';
import 'package:tasktwo/core/lists/list.dart';

class CustomWiDropDownSignup extends StatelessWidget {
  final void Function(Object?)? onChanged;
  final value;
  const CustomWiDropDownSignup(
      {super.key, required this.onChanged, this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: AppColors.white2,
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
          icon: Icon(
            Icons.keyboard_arrow_down_outlined,
            size: 30,
            color: AppColors.black,
          ),
          menuMaxHeight: 350,
          hint: Text('syria',
              style: TextStyle(
                fontFamily: 'PoppinsMedium',
                color: AppColors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              )),
          style: Theme.of(context).textTheme.bodySmall,
          items: cityList
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Text(e,
                          style: TextStyle(
                            fontFamily: 'PoppinsMedium',
                            color: AppColors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )),
                      alignment: Alignment.centerLeft,
                    ),
                  ))
              .toList(),
          value: value,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
