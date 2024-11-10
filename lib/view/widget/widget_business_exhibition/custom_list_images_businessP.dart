// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListImagesBusinessp extends StatelessWidget {
  final List theList;
  const CustomListImagesBusinessp({super.key, required this.theList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.h,
      child: Scrollbar(
        child: ListView.builder(
          itemCount: theList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return ClipRRect(
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 20),
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.r),
                      topRight: Radius.circular(25.r),
                      bottomLeft: Radius.circular(25.r),
                      bottomRight: Radius.circular(25.r),
                    ),
                    child: Image.asset(
                      theList[index],
                      height: 165.h,
                      width: 205.w,
                      fit: BoxFit.fill,
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}
