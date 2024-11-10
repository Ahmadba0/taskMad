import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:device_preview/device_preview.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/core/application_style/app_mode.dart';
import 'package:tasktwo/core/localization/changeLocal.dart';
import 'package:tasktwo/core/localization/translation.dart';
import 'package:tasktwo/core/services/services.dart';
import 'package:tasktwo/view/screen/business_exhibition.dart';
import 'package:tasktwo/view/screen/cart_page.dart';
import 'package:tasktwo/view/screen/confirm.dart';
import 'package:tasktwo/view/screen/home.dart';
import 'package:tasktwo/view/screen/login.dart';
import 'package:tasktwo/view/screen/order_placed.dart';
import 'package:tasktwo/view/screen/product_deatils.dart';
import 'package:tasktwo/view/screen/search.dart';
import 'package:tasktwo/view/screen/signup.dart';
import 'package:tasktwo/view/screen/verify_after_signup.dart';
import 'package:tasktwo/view/screen/welcom_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
    // MyApp(),
  );
}

var theme;
bool? light;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    light = controller.myServices.sharedPreferences.getBool('light') == true
        ? true
        : false;
    theme = controller.myServices.sharedPreferences.getString('theme');
    print("theme $theme");

    // theme = controller.myServices.sharedPreferences.getString('theme');
    return ScreenUtilInit(
      designSize: const Size(412, 892),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        useInheritedMediaQuery: true,
        //locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        theme: controller.appTheme,
        //
        translations: MyTranslation(),
        locale: controller.language,

        getPages: routes,
      ),
    );
  }
}

class AppRoutes {
  static const String welcomScreen = '/welcomScreen';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String verifyAfterSignup = '/verifyAfterSignup';
  static const String home = '/home';
  static const String productDeatils = '/productDeatils';
  static const String confirm = '/confirm';
  static const String orderPlaced = '/orderPlaced';
  static const String businessExhibition = '/businessExhibition';
  static const String searchP = '/searchP';
  static const String cartPage = '/cartPage';
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
    page: () => const Signup(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: AppRoutes.verifyAfterSignup,
    page: () => const VerifyAfterSignup(),
  ),
  GetPage(
    name: AppRoutes.home,
    page: () => const Home(),
  ),
  // GetPage(
  //   name: '/',
  //   page: () => const Home(),
  // ),
  GetPage(
    name: AppRoutes.productDeatils,
    page: () => const ProductDeatils(),
  ),
  GetPage(
    name: AppRoutes.confirm,
    page: () => const Confirm(),
  ),
  GetPage(
    name: AppRoutes.orderPlaced,
    page: () => const OrderPlaced(),
  ),

  GetPage(
    name: AppRoutes.businessExhibition,
    page: () => const BusinessExhibition(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: AppRoutes.searchP,
    page: () => const SearchP(),
  ),
  GetPage(
    name: AppRoutes.cartPage,
    page: () => const CartPage(),
  ),
];
