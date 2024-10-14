import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/main.dart';

class LoginBtnWelcomeScreen extends StatelessWidget {
  const LoginBtnWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () {
          Get.toNamed(AppRoutes.login);
        },
        child: Container(
          height: Get.height,
          alignment: Alignment.center,
          child: const Text(
            "Log in",
            style: TextStyle(
              fontFamily: 'Urbane',
              color: AppColors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
