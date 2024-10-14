import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:device_preview/device_preview.dart';
import 'package:tasktwo/core/application_style/app_font.dart';
import 'package:tasktwo/view/screen/login.dart';
import 'package:tasktwo/view/screen/signup.dart';
import 'package:tasktwo/view/screen/verify_after_signup.dart';
import 'package:tasktwo/view/screen/welcom_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
    // MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      //locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: englishTheme,
      //home: MyHomePage(title: 'Flutter Demo Home Page'),

      getPages: routes,
    );
  }
}

class AppRoutes {
  static const String welcomScreen = '/welcomScreen';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String verifyAfterSignup = '/verifyAfterSignup';
}

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: '/',
    page: () => const WelcomScreen(),
  ),
  GetPage(
    name: AppRoutes.login,
    page: () => const Login(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: AppRoutes.signup,
    page: () => Signup(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: AppRoutes.verifyAfterSignup,
    page: () => const VerifyAfterSignup(),
  ),
];
