// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  //var
  bool isobsecure1 = true;
  bool isobsecure2 = true;
  var citySelected;
  TextEditingController? emailController;
  TextEditingController? userNameController;
  TextEditingController? phoneNumberController;
  TextEditingController? passwordController;
  TextEditingController? confirmPasswordController;
  //my method
  changeobsecure1() {
    isobsecure1 = !isobsecure1;
    update();
  }

  changeobsecure2() {
    isobsecure2 = !isobsecure2;
    update();
  }

  changeSelectCity(value) {
    citySelected = null;
    citySelected = value;
    update();
  }

  //init
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    emailController = TextEditingController();
    userNameController = TextEditingController();
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController!.dispose();
    userNameController!.dispose();
    phoneNumberController!.dispose();
    passwordController!.dispose();
    confirmPasswordController!.dispose();
  }
}
