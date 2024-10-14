import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //var
  bool isobsecure = true;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  //my method
  changeobsecure() {
    isobsecure = !isobsecure;
    update();
  }

  //init
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController!.dispose();
    passwordController!.dispose();
  }
}
