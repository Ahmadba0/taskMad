// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_images.dart';
import 'package:tasktwo/main.dart';

class WiTopImageSignup extends StatelessWidget {
  const WiTopImageSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Positioned(
        top: 0,
        left: 0,
        child: theme == 'light'
            ? Image.asset(
                AppImages.topLeft,
              )
            : Image.asset(
                AppImages.blackTopLeft,
              ),
      ),
    );
  }
}
