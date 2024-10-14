// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:tasktwo/core/application_style/app_color.dart';
import 'package:tasktwo/view/widget/widget_welcom_screen/first_text_welcome_screen.dart';
import 'package:tasktwo/view/widget/widget_welcom_screen/second_text_welcome_screen.dart';
import 'package:tasktwo/view/widget/widget_welcom_screen/two_button_welcom_screen.dart';

class WhitControllerWelcomeScreen extends StatelessWidget {
  const WhitControllerWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: 1,
      child: SlideAnimation(
        duration: const Duration(milliseconds: 1500),
        curve: Curves.easeInOut,
        verticalOffset: 400,
        child: FadeInAnimation(
          child: Container(
            padding:
                const EdgeInsets.only(left: 30, right: 30, bottom: 0, top: 0),
            height: MediaQuery.of(context).size.width <= 360
                ? MediaQuery.of(context).size.height / 2.5
                : MediaQuery.of(context).size.height / 2.7,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: AppColors.white1,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
              ),
            ),
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///
                ///
                ///
                FirstTextWelcomeScreen(),
                SizedBox(height: 10),

                ///
                ///
                ///
                SecondTextWelcomeScreen(),
                // Spacer(),
                MediaQuery.of(context).size.width <= 360
                    ? SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      )
                    : SizedBox(
                        height: MediaQuery.of(context).size.height / 15,
                      ),

                ///
                ///
                ///
                TwoButtonWelcomScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
