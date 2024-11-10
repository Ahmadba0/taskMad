// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

showMyDialog(
    context,
    bool? isHaveButton,
    void Function()? onTapOk,
    void Function()? onTapCancel,
    String textTitle,
    String textContent,
    Color tapColor) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      titlePadding: EdgeInsets.all(0),
      actionsPadding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
          side: BorderSide(
            color: AppColors.grey2,
          ),
          borderRadius: BorderRadius.circular(15)),
      actions: [
        ///
        ///--the tap that are colored
        ///
        Container(
          decoration: BoxDecoration(
            color: tapColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          height: 65,
          child: Center(

              ///
              ///---text in tab
              ///
              child: Text(
            textTitle,
            style: TextStyle(
              fontFamily: 'PoppinsBold',
              color: AppColors.white1,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          )),
        ),

        ///
        ///the body
        ///
        Container(
          height: 150,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.white1,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: isHaveButton == true ? 35 : 55,
              ),

              ///
              ///--text in body
              ///
              Text(
                textContent,
                style: TextStyle(
                  fontFamily: 'PoppinsBold',
                  color: AppColors.grey1,
                  fontSize: 14,
                  // fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),

              ///
              ///---the button
              ///
              isHaveButton == true
                  ? Container(
                      height: 50,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: onTapOk,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.blue1,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'OK',
                                    style: TextStyle(
                                      fontFamily: 'PoppinsBold',
                                      color: AppColors.white1,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: onTapCancel,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.blue1,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(15),
                                  ),
                                  border: Border(
                                    left: BorderSide(
                                        color: AppColors.white1, width: 2),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'CANCEL',
                                    style: TextStyle(
                                      fontFamily: 'PoppinsBold',
                                      color: AppColors.white1,
                                      fontSize: 14,
                                      // fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  : Container()
            ],
          ),
        )
      ],
    ),
  );
}
