// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/welcom_screen_controller.dart';

class FirstTextWelcomeScreen extends GetView<WelcomScreenController> {
  const FirstTextWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Your Vision, Our\nExpertise',
      style: Theme.of(context).textTheme.displayLarge,
    );
  }
}
