// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomWiBackAndIconAuth extends StatelessWidget {
  final void Function()? onTapBack;

  final Widget widget;
  const CustomWiBackAndIconAuth({
    super.key,
    required this.onTapBack,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: onTapBack,
              child: Icon(Icons.arrow_back_ios),
            ),
          ),
          // SizedBox(width: Get.width / 1.8),
          Spacer(),
          Spacer(),
          Spacer(),

          widget,
        ],
      ),
    );
  }
}
