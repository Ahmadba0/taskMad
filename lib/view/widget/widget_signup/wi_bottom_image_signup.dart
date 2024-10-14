// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tasktwo/core/application_style/app_images.dart';

class WiBottomImageSignup extends StatelessWidget {
  const WiBottomImageSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Positioned(
        bottom: 0,
        right: 0,
        child: Image.asset(
          AppImages.bottomRight,
        ),
      ),
    );
  }
}
