import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class CustomCirculAvatarHome extends StatelessWidget {
  final void Function() onPressed;
  final Color color;
  const CustomCirculAvatarHome(
      {super.key, required this.onPressed, required this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: theme == 'light' ? AppColors.white1 : AppColors.black1,
      radius: 23,
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.person,
            color: color,
          )),
    );
  }
}
