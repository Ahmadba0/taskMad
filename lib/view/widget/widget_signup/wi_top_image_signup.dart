// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:tasktwo/core/application_style/app_images.dart';

class WiTopImageSignup extends StatelessWidget {
  const WiTopImageSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Positioned(
        top: 0,
        left: 0,
        child: Image.asset(
          AppImages.topLeft,
        ),
      ),
    );
  }
}
