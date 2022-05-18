import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/color_constant.dart';
import '../utils/image_constant.dart';
import '../utils/math_utils.dart';

// ignore: must_be_immutable
class Group53ItemWidget extends StatelessWidget {
  Group53ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: getHorizontalSize(
            2.38,
          ),
          top: getVerticalSize(
            15.38,
          ),
          bottom: getVerticalSize(
            15.38,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  4.62,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
              ),
              child: Text(
                "Explore recipes",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: ColorConstant.black900,
                  fontSize: getFontSize(
                    20,
                  ),
                  fontFamily: 'Biryani',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  9.27,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        10.69,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          8.00,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.deepOrangeA400,
                        width: getHorizontalSize(
                          0.25,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.deepOrangeA400,
                          spreadRadius: getHorizontalSize(
                            2.00,
                          ),
                          blurRadius: getHorizontalSize(
                            2.00,
                          ),
                          offset: Offset(
                            2,
                            2,
                          ),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                17.60,
                              ),
                              top: getVerticalSize(
                                11.31,
                              ),
                              right: getHorizontalSize(
                                17.60,
                              ),
                            ),
                            child: Container(
                              height: getSize(
                                38.00,
                              ),
                              width: getSize(
                                38.00,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgElfire,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              15.62,
                            ),
                            right: getHorizontalSize(
                              14.60,
                            ),
                            bottom: getVerticalSize(
                              3.25,
                            ),
                          ),
                          child: Text(
                            "Trending",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.deepOrangeA400,
                              fontSize: getFontSize(
                                12,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        10.69,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          8.00,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.deepOrangeA400,
                        width: getHorizontalSize(
                          0.25,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.deepOrangeA400,
                          spreadRadius: getHorizontalSize(
                            2.00,
                          ),
                          blurRadius: getHorizontalSize(
                            2.00,
                          ),
                          offset: Offset(
                            2,
                            2,
                          ),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              23.49,
                            ),
                            top: getVerticalSize(
                              9.31,
                            ),
                            right: getHorizontalSize(
                              23.49,
                            ),
                          ),
                          child: Container(
                            height: getSize(
                              33.00,
                            ),
                            width: getSize(
                              33.00,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgEntyponew,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              23.49,
                            ),
                            top: getVerticalSize(
                              7.00,
                            ),
                            right: getHorizontalSize(
                              23.49,
                            ),
                            bottom: getVerticalSize(
                              3.25,
                            ),
                          ),
                          child: Text(
                            "New",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.deepOrangeA400,
                              fontSize: getFontSize(
                                12,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        10.69,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          8.00,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.deepOrangeA400,
                        width: getHorizontalSize(
                          0.25,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.deepOrangeA400,
                          spreadRadius: getHorizontalSize(
                            2.00,
                          ),
                          blurRadius: getHorizontalSize(
                            2.00,
                          ),
                          offset: Offset(
                            2,
                            2,
                          ),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                18.86,
                              ),
                              top: getVerticalSize(
                                7.11,
                              ),
                              right: getHorizontalSize(
                                18.86,
                              ),
                            ),
                            child: Container(
                              height: getVerticalSize(
                                34.70,
                              ),
                              width: getHorizontalSize(
                                39.00,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgGroup290,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                4.36,
                              ),
                              top: getVerticalSize(
                                7.50,
                              ),
                              right: getHorizontalSize(
                                10.00,
                              ),
                              bottom: getVerticalSize(
                                3.25,
                              ),
                            ),
                            child: Text(
                              "Quick snack",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.deepOrangeA400,
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      78.24,
                    ),
                    width: getHorizontalSize(
                      80.22,
                    ),
                    margin: EdgeInsets.only(
                      bottom: getVerticalSize(
                        0.01,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                10.00,
                              ),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              height: getVerticalSize(
                                67.56,
                              ),
                              width: getHorizontalSize(
                                80.22,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    8.00,
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.deepOrangeA400,
                                  width: getHorizontalSize(
                                    0.25,
                                  ),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorConstant.deepOrangeA4001a,
                                    spreadRadius: getHorizontalSize(
                                      2.00,
                                    ),
                                    blurRadius: getHorizontalSize(
                                      2.00,
                                    ),
                                    offset: Offset(
                                      2,
                                      2,
                                    ),
                                  ),
                                ],
                              ),
                              child: Text(
                                "Starters",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.deepOrangeA400,
                                  fontSize: getFontSize(
                                    12,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                10.00,
                              ),
                              right: getHorizontalSize(
                                8.00,
                              ),
                              bottom: getVerticalSize(
                                10.00,
                              ),
                            ),
                            child: Container(
                              height: getVerticalSize(
                                71.00,
                              ),
                              width: getHorizontalSize(
                                58.00,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgGroup291,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
