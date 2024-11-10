import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasktwo/controller/cart_controller.dart';
import 'package:tasktwo/core/application_style/app_color.dart';

class CustomListProductInCart extends GetView<CartController> {
  final List theListProduct;
  const CustomListProductInCart({super.key, required this.theListProduct});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: MediaQuery.of(context).size.height.h - 235.h,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: theListProduct.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            height: 226.h,
            width: 195.w,
            decoration: BoxDecoration(
                color: controller.secondColor!,
                border: Border(
                  bottom: BorderSide(
                    color: controller.primaryColor!,
                    width: 4,
                  ),
                  left: BorderSide(
                    color: controller.primaryColor!,
                    width: 2,
                  ),
                  right: BorderSide(
                    color: controller.primaryColor!,
                    width: 2,
                  ),
                  top: BorderSide(
                    color: controller.primaryColor!,
                    width: 1,
                  ),
                ),
                borderRadius: BorderRadius.circular(25.r)),
            child: Card(
              color: controller.secondColor!,
              elevation: 10,
              shadowColor: controller.primaryColor!,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  ///
                  ///-------icon close
                  ///
                  Positioned(
                    top: 2,
                    right: 5,
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: controller.primaryColor!,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.close,
                          size: 17,
                          color: AppColors.white1,
                        ),
                      ),
                    ),
                  ),

                  ///
                  ///
                  ///
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ///
                      ///-------image
                      ///
                      CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('${theListProduct[index]['image']}')),

                      ///
                      ///--------name
                      ///
                      ///
                      Text(
                        '${theListProduct[index]['name']}',
                        style: TextStyle(
                          fontFamily: 'ArticulatMidium',
                          fontSize: 20.sp,
                          color: controller.primaryColor!,
                        ),
                      ),
                      //

                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ///
                          ///---- size and color
                          ///
                          Text(
                            '${theListProduct[index]['sizeAndColor']}',
                            style: TextStyle(
                              fontFamily: 'ArticulatMidium',
                              fontSize: 14.sp,
                              color: AppColors.grey1,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),

                          ///
                          ///------price
                          ///
                          Container(
                            alignment: Alignment.center,
                            width: 65.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                                color: controller.primaryColor!,
                                borderRadius: BorderRadius.circular(12.r)),
                            child: Text(
                              '${theListProduct[index]['price']}\$',
                              style: TextStyle(
                                fontFamily: 'UrbaneBold',
                                fontSize: 14.sp,
                                color: AppColors.white1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ///
                          ///----icon plus
                          ///
                          ///
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_circle_outlined,
                                color: controller.primaryColor!,
                                size: 35,
                              )),

                          ///
                          ///------------count
                          ///
                          Text(
                            '${theListProduct[index]['count']}',
                            style: TextStyle(
                              fontFamily: 'UrbaneBold',
                              fontSize: 14.sp,
                              color: controller.primaryColor!,
                            ),
                          ),

                          ///
                          ///----------icon minus
                          ///
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove_circle_outline,
                                color: controller.primaryColor!,
                                size: 35,
                              )),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
