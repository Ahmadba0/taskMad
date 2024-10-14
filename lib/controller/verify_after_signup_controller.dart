// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';

class VerifyAfterSignupController extends GetxController {
  //var
  String email = '';
  OtpFieldController? otpController = OtpFieldController();
  late Timer _timer;
  int second = 59;
  int minutes = 3;
  //my method
  myTimerSecond() {
    _timer = Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        if (second == 0 && minutes == 0) {
          timer.cancel();
        } else if (second == 0 && minutes > 0) {
          minutes--;
          second = 59;
        } else {
          second--;
        }
        update();
      },
    );
  }

  void cancelTimer() {
    _timer.cancel();
  }

  //init
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    email = Get.arguments['email'];
    myTimerSecond();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    cancelTimer();
  }
}
