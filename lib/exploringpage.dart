import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoodforfood/utils/color_constant.dart';
import 'package:zoodforfood/utils/image_constant.dart';
import 'package:zoodforfood/utils/math_utils.dart';
import 'package:zoodforfood/widgets/group53_item_widget.dart';

class ExploringPage extends StatefulWidget {
  const ExploringPage({Key? key}) : super(key: key);

  @override
  State<ExploringPage> createState() => _ExploringPageState();
}

class _ExploringPageState extends State<ExploringPage> {
  @override
  Widget build(BuildContext context) {
    var wSize  = MediaQuery.of(context).size.width;
    var hSize  = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorConstant.yellow50,
      body: Container(
        decoration: BoxDecoration(
          color: ColorConstant.yellow50,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top:hSize*0.05
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    9.00,
                  ),
                  right: getHorizontalSize(
                    15.00,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  20.00,
                                ),
                                right: getHorizontalSize(
                                  20.00,
                                ),
                              ),
                              child: Container(
                                height: getVerticalSize(
                                  27.00,
                                ),
                                width: getHorizontalSize(
                                  25.00,
                                ),
                                child: SvgPicture.asset(
                                  ImageConstant.imgPindrop,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    6.00,
                                  ),
                                ),
                                child: Text(
                                  "Delhi NCR",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(
                                      10,
                                    ),
                                    fontFamily: 'Biryani',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              58.00,
                            ),
                            bottom: getVerticalSize(
                              3.00,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              38.00,
                            ),
                            width: getHorizontalSize(
                              87.00,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgZoodforfoodl,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: getVerticalSize(
                          3.00,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getSize(
                            19.00,
                          ),
                        ),
                        child: Image.asset(
                          ImageConstant.imgEllipse25,
                          height: getVerticalSize(
                            38.00,
                          ),
                          width: getHorizontalSize(
                            35.00,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  top: getVerticalSize(
                    28.00,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            10.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        child: Container(
                          height: getVerticalSize(
                            39.00,
                          ),
                          width: getHorizontalSize(
                            338.00,
                          ),
                          child: SvgPicture.asset(
                            ImageConstant.imgGroup287,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          18.00,
                        ),
                        top: getVerticalSize(
                          30.00,
                        ),
                        right: getHorizontalSize(
                          18.00,
                        ),
                      ),
                      child: Text(
                        "For you",
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
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          left: getHorizontalSize(
                            10.00,
                          ),
                          top: getVerticalSize(
                            6.00,
                          ),
                          right: getHorizontalSize(
                            9.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              10.00,
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: ColorConstant.deepOrange700,
                              spreadRadius: getHorizontalSize(
                                2.00,
                              ),
                              blurRadius: getHorizontalSize(
                                2.00,
                              ),
                              offset: Offset(
                                0,
                                0,
                              ),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  0.40,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      48.72,
                                    ),
                                    width: getHorizontalSize(
                                      168.88,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.deepOrangeA400,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                          getHorizontalSize(
                                            10.00,
                                          ),
                                        ),
                                        topRight: Radius.circular(
                                          getHorizontalSize(
                                            0.00,
                                          ),
                                        ),
                                        bottomLeft: Radius.circular(
                                          getHorizontalSize(
                                            0.00,
                                          ),
                                        ),
                                        bottomRight: Radius.circular(
                                          getHorizontalSize(
                                            0.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "To Dine/Order",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Biryani',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      48.72,
                                    ),
                                    width: getHorizontalSize(
                                      167.96,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.orangeA2007f,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                          getHorizontalSize(
                                            0.00,
                                          ),
                                        ),
                                        topRight: Radius.circular(
                                          getHorizontalSize(
                                            10.00,
                                          ),
                                        ),
                                        bottomLeft: Radius.circular(
                                          getHorizontalSize(
                                            0.00,
                                          ),
                                        ),
                                        bottomRight: Radius.circular(
                                          getHorizontalSize(
                                            0.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "To Cook",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.deepOrange5007f,
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Biryani',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  19.88,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.asset(
                                    ImageConstant.imgRectangle191,
                                    height: getVerticalSize(
                                      71.00,
                                    ),
                                    width: getHorizontalSize(
                                      70.00,
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                  Image.asset(
                                    ImageConstant.imgRectangle192,
                                    height: getSize(
                                      71.00,
                                    ),
                                    width: getSize(
                                      71.00,
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                  Image.asset(
                                    ImageConstant.imgRectangle193,
                                    height: getSize(
                                      71.00,
                                    ),
                                    width: getSize(
                                      71.00,
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  9.00,
                                ),
                                bottom: getVerticalSize(
                                  11.00,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height: getVerticalSize(
                                      36.00,
                                    ),
                                    width: getHorizontalSize(
                                      206.00,
                                    ),
                                    margin: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        15.00,
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            width: getHorizontalSize(
                                              109.00,
                                            ),
                                            margin: EdgeInsets.only(
                                              top: getVerticalSize(
                                                1.00,
                                              ),
                                              right: getHorizontalSize(
                                                10.00,
                                              ),
                                            ),
                                            child: Text(
                                              "Dish Name 1 from Restaurant X",
                                              maxLines: null,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: ColorConstant
                                                    .deepOrangeA400,
                                                fontSize: getFontSize(
                                                  10,
                                                ),
                                                fontFamily: 'Biryani',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            width: getHorizontalSize(
                                              105.00,
                                            ),
                                            margin: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                10.00,
                                              ),
                                              bottom: getVerticalSize(
                                                1.00,
                                              ),
                                            ),
                                            child: Text(
                                              "Dish Name 2 from Restaurant Y",
                                              maxLines: null,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: ColorConstant
                                                    .deepOrangeA400,
                                                fontSize: getFontSize(
                                                  10,
                                                ),
                                                fontFamily: 'Biryani',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(
                                      89.00,
                                    ),
                                    margin: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        7.00,
                                      ),
                                      top: getVerticalSize(
                                        1.00,
                                      ),
                                      right: getHorizontalSize(
                                        20.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Dish Name 3 from Restaurant Z",
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.deepOrangeA400,
                                        fontSize: getFontSize(
                                          10,
                                        ),
                                        fontFamily: 'Biryani',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          19.00,
                        ),
                        top: getVerticalSize(
                          28.00,
                        ),
                        right: getHorizontalSize(
                          19.00,
                        ),
                      ),
                      child: Text(
                        "Confused?",
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
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          left: getHorizontalSize(
                            10.00,
                          ),
                          right: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              10.00,
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: ColorConstant.deepOrange700,
                              spreadRadius: getHorizontalSize(
                                2.00,
                              ),
                              blurRadius: getHorizontalSize(
                                2.00,
                              ),
                              offset: Offset(
                                5,
                                5,
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
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    10.00,
                                  ),
                                  top: getVerticalSize(
                                    8.00,
                                  ),
                                  bottom: getVerticalSize(
                                    17.00,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            11.00,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: getVerticalSize(
                                                  4.00,
                                                ),
                                              ),
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: getVerticalSize(
                                                  28.00,
                                                ),
                                                width: getHorizontalSize(
                                                  90.00,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      20.00,
                                                    ),
                                                  ),
                                                  border: Border.all(
                                                    color: ColorConstant
                                                        .black900,
                                                    width: getHorizontalSize(
                                                      1.00,
                                                    ),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Taste",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .black900,
                                                    fontSize: getFontSize(
                                                      12,
                                                    ),
                                                    fontFamily: 'Biryani',
                                                    fontWeight:
                                                        FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  9.00,
                                                ),
                                                top: getVerticalSize(
                                                  4.00,
                                                ),
                                              ),
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: getVerticalSize(
                                                  28.00,
                                                ),
                                                width: getHorizontalSize(
                                                  90.00,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      20.00,
                                                    ),
                                                  ),
                                                  border: Border.all(
                                                    color: ColorConstant
                                                        .black900,
                                                    width: getHorizontalSize(
                                                      1.00,
                                                    ),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Cuisine",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .black900,
                                                    fontSize: getFontSize(
                                                      12,
                                                    ),
                                                    fontFamily: 'Biryani',
                                                    fontWeight:
                                                        FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  9.00,
                                                ),
                                                top: getVerticalSize(
                                                  4.00,
                                                ),
                                              ),
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: getVerticalSize(
                                                  28.00,
                                                ),
                                                width: getHorizontalSize(
                                                  90.00,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      20.00,
                                                    ),
                                                  ),
                                                  border: Border.all(
                                                    color: ColorConstant
                                                        .black900,
                                                    width: getHorizontalSize(
                                                      1.00,
                                                    ),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Mode",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .black900,
                                                    fontSize: getFontSize(
                                                      12,
                                                    ),
                                                    fontFamily: 'Biryani',
                                                    fontWeight:
                                                        FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                right: getHorizontalSize(
                                                  1.00,
                                                ),
                                                bottom: getVerticalSize(
                                                  8.00,
                                                ),
                                              ),
                                              child: Container(
                                                height: getSize(
                                                  24.00,
                                                ),
                                                width: getSize(
                                                  24.00,
                                                ),
                                                child: SvgPicture.asset(
                                                  ImageConstant.imgMifilter,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  21.00,
                                                ),
                                                top: getVerticalSize(
                                                  4.00,
                                                ),
                                              ),
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: getVerticalSize(
                                                  28.00,
                                                ),
                                                width: getHorizontalSize(
                                                  90.00,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      20.00,
                                                    ),
                                                  ),
                                                  border: Border.all(
                                                    color: ColorConstant
                                                        .black900,
                                                    width: getHorizontalSize(
                                                      1.00,
                                                    ),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Type",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .black900,
                                                    fontSize: getFontSize(
                                                      12,
                                                    ),
                                                    fontFamily: 'Biryani',
                                                    fontWeight:
                                                        FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: getVerticalSize(
                                            20.00,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                bottom: getVerticalSize(
                                                  1.00,
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize:
                                                    MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        height:
                                                            getVerticalSize(
                                                          10.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          9.00,
                                                        ),
                                                        margin:
                                                            EdgeInsets.only(
                                                          top:
                                                              getVerticalSize(
                                                            4.00,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            1.00,
                                                          ),
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              5.00,
                                                            ),
                                                          ),
                                                          border: Border.all(
                                                            color:
                                                                ColorConstant
                                                                    .black900,
                                                            width:
                                                                getHorizontalSize(
                                                              0.50,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            3.74,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            39.00,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "To cook",
                                                          overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                            color:
                                                                ColorConstant
                                                                    .black900,
                                                            fontSize:
                                                                getFontSize(
                                                              12,
                                                            ),
                                                            fontFamily:
                                                                'Inter',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    width: getHorizontalSize(
                                                      98.00,
                                                    ),
                                                    margin: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                        6.00,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          height:
                                                              getVerticalSize(
                                                            11.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            9.00,
                                                          ),
                                                          margin:
                                                              EdgeInsets.only(
                                                            top:
                                                                getVerticalSize(
                                                              1.00,
                                                            ),
                                                            bottom:
                                                                getVerticalSize(
                                                              3.00,
                                                            ),
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                ColorConstant
                                                                    .whiteA700,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                5.50,
                                                              ),
                                                            ),
                                                            border:
                                                                Border.all(
                                                              color:
                                                                  ColorConstant
                                                                      .black900,
                                                              width:
                                                                  getHorizontalSize(
                                                                0.50,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          "To Dine/order",
                                                          overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                            color:
                                                                ColorConstant
                                                                    .black900,
                                                            fontSize:
                                                                getFontSize(
                                                              12,
                                                            ),
                                                            fontFamily:
                                                                'Inter',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  4.00,
                                                ),
                                                top: getVerticalSize(
                                                  11.00,
                                                ),
                                                bottom: getVerticalSize(
                                                  1.00,
                                                ),
                                              ),
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: getVerticalSize(
                                                  25.00,
                                                ),
                                                width: getHorizontalSize(
                                                  122.26,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: ColorConstant
                                                      .deepOrangeA400,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      6.00,
                                                    ),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Suggest me a dish",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .whiteA700,
                                                    fontSize: getFontSize(
                                                      12,
                                                    ),
                                                    fontFamily: 'Biryani',
                                                    fontWeight:
                                                        FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  10.81,
                                                ),
                                                top: getVerticalSize(
                                                  12.00,
                                                ),
                                                right: getHorizontalSize(
                                                  25.00,
                                                ),
                                              ),
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: getVerticalSize(
                                                  25.00,
                                                ),
                                                width: getHorizontalSize(
                                                  72.93,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: ColorConstant
                                                      .deepOrangeA400,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      6.00,
                                                    ),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Go crazy!",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .whiteA700,
                                                    fontSize: getFontSize(
                                                      12,
                                                    ),
                                                    fontFamily: 'Biryani',
                                                    fontWeight:
                                                        FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            10.00,
                          ),
                          top: getVerticalSize(
                            32.00,
                          ),
                          right: getHorizontalSize(
                            9.00,
                          ),
                        ),
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return Group53ItemWidget();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
