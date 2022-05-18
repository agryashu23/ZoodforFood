import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoodforfood/utils/color_constant.dart';
import 'package:zoodforfood/utils/image_constant.dart';
import 'package:zoodforfood/utils/math_utils.dart';

import 'database.dart';

class MainPAge extends StatefulWidget {
  @override
  State<MainPAge> createState() => _MainPAgeState();
}

class _MainPAgeState extends State<MainPAge> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
  var wSize = MediaQuery.of(context).size.width;
  var hSize = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: hSize*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin:EdgeInsets.only(left:wSize*0.08),

                    child: Column(
                      children:
                      [
                        SvgPicture.asset(
                          ImageConstant.imgPlace,
                          fit: BoxFit.fill,
                        ),
                        Text(
                          "Delhi NCR",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.black900,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Biryani',
                            fontWeight: FontWeight.w400,
                          ),
                        ),

      ],
                    ),
                  ),
                  SvgPicture.asset(
                    ImageConstant.imgGroup,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding:EdgeInsets.only(right:wSize*0.08),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          26.50,
                      ),
                      child: Image.asset(
                        ImageConstant.imgEllipse23,
                        height: 40,
                        width:40,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  top: wSize*0.06,
                ),
                child:
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: wSize*0.06),
                          padding:EdgeInsets.symmetric(horizontal: wSize*0.025),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                25.00,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.deepOrange700,
                              width: getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap:(){

                                  showSearch(
                                    context:context,
                                    delegate: MySearchDelegate(),
                                  );
              },
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: hSize*0.004),
                                  decoration:BoxDecoration(
                                    border:Border(
                                      right:BorderSide(width: 1.0,color:ColorConstant.deepOrange700,)
                                    ),
                                  ),

                                  width:wSize*0.72,
                                  child:  ListTile(
                                    minLeadingWidth : 10,
                                    visualDensity: VisualDensity(horizontal: 0, vertical: -hSize*0.004),
                                    leading:SvgPicture.asset(
                                      ImageConstant.imgSearch,
                                      fit: BoxFit.fill,
                                    ),
                                    title:Text("Search Dishes, Recipies, ...",style: TextStyle(fontSize:wSize*0.04,
                                        color:Colors.grey.shade500),),
                                    dense:true,
                                    contentPadding: EdgeInsets.symmetric(horizontal: 0,vertical:0),
                                  ),
                                ),
                              ),
                                  GestureDetector(
                                    onTap: (){},
                                    child: SvgPicture.asset(
                                      ImageConstant.imgMic,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                24.00,
                              ),
                              top: getVerticalSize(
                                30.00,
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
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: hSize*0.02,horizontal: wSize*0.04),

                          decoration: BoxDecoration(
                            color: ColorConstant.gray100,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                10.00,
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: ColorConstant.black90040,
                                spreadRadius: getHorizontalSize(
                                  2.00,
                                ),
                                blurRadius: getHorizontalSize(
                                  2.00,
                                ),
                                offset: Offset(
                                  1,
                                  1,
                                ),
                              ),
                            ],
                          ),
                          child: DefaultTabController(
                            length: 2,
                            child: Scaffold(
                              appBar: AppBar(
                                bottom: TabBar(
                                  tabs:  [
                                    Tab(
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
                                        )),
                                    Tab(child: Text(
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
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          );
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: getVerticalSize(
                              139.00,
                            ),
                            width: size.width,
                            margin: EdgeInsets.only(
                              top: getVerticalSize(
                                10.00,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            159.00,
                                          ),
                                          right: getHorizontalSize(
                                            159.00,
                                          ),
                                        ),
                                        child: Text(
                                          "Explore more",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color:
                                                ColorConstant.deepOrange700,
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Biryani',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: getVerticalSize(
                                            114.00,
                                          ),
                                          width: size.width,
                                          child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    bottom: getVerticalSize(
                                                      10.00,
                                                    ),
                                                  ),
                                                  child: Container(
                                                    height: getVerticalSize(
                                                      100.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      428.00,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      ImageConstant
                                                          .imgVector21,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomLeft,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    top: getVerticalSize(
                                                      10.00,
                                                    ),
                                                  ),
                                                  child: Container(
                                                    height: getVerticalSize(
                                                      100.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      428.00,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      ImageConstant
                                                          .imgVector20,
                                                      fit: BoxFit.fill,
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
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        136.00,
                                      ),
                                      top: getVerticalSize(
                                        31.00,
                                      ),
                                      right: getHorizontalSize(
                                        136.00,
                                      ),
                                      bottom: getVerticalSize(
                                        31.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Fun Fact of the Day",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
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
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                28.00,
                              ),
                              top: getVerticalSize(
                                33.00,
                              ),
                              right: getHorizontalSize(
                                28.00,
                              ),
                            ),
                            child: Text(
                              "Confused? Try something new!",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.deepOrange700,
                                fontSize: getFontSize(
                                  20,
                                ),
                                fontFamily: 'Biryani',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                    Container(
                      height: getVerticalSize(
                        367.00,
                      ),
                      width: size.width,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  28.00,
                                ),
                                right: getHorizontalSize(
                                  29.00,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          10.00,
                                        ),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: ColorConstant.black90040,
                                          spreadRadius: getHorizontalSize(
                                            2.00,
                                          ),
                                          blurRadius: getHorizontalSize(
                                            2.00,
                                          ),
                                          offset: Offset(
                                            1,
                                            1,
                                          ),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: getHorizontalSize(
                                                186.00,
                                              ),
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  30.00,
                                                ),
                                                top: getVerticalSize(
                                                  17.00,
                                                ),
                                                bottom: getVerticalSize(
                                                  9.00,
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: ColorConstant
                                                    .deepOrange700,
                                                borderRadius:
                                                    BorderRadius.only(
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
                                                  bottomRight:
                                                      Radius.circular(
                                                    getHorizontalSize(
                                                      0.00,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              child: Text(
                                                "To Dine/Order",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'Biryani',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: getHorizontalSize(
                                                185.00,
                                              ),
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  30.00,
                                                ),
                                                top: getVerticalSize(
                                                  17.00,
                                                ),
                                                bottom: getVerticalSize(
                                                  9.00,
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                color: ColorConstant
                                                    .deepOrange7007f,
                                                borderRadius:
                                                    BorderRadius.only(
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
                                                  bottomRight:
                                                      Radius.circular(
                                                    getHorizontalSize(
                                                      0.00,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              child: Text(
                                                "To Cook",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.whiteA700,
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
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              13.00,
                                            ),
                                            top: getVerticalSize(
                                              14.00,
                                            ),
                                            right: getHorizontalSize(
                                              13.00,
                                            ),
                                          ),
                                          child: Text(
                                            "Meal Type",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color:
                                                  ColorConstant.deepOrange700,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Biryani',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              height: getVerticalSize(
                                                21.00,
                                              ),
                                              width: getHorizontalSize(
                                                72.00,
                                              ),
                                              margin: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  13.00,
                                                ),
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
                                                      .deepOrange700,
                                                  width: getHorizontalSize(
                                                    1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: getVerticalSize(
                                                21.00,
                                              ),
                                              width: getHorizontalSize(
                                                72.00,
                                              ),
                                              margin: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  9.00,
                                                ),
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
                                                      .deepOrange700,
                                                  width: getHorizontalSize(
                                                    1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: getVerticalSize(
                                                21.00,
                                              ),
                                              width: getHorizontalSize(
                                                72.00,
                                              ),
                                              margin: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  9.00,
                                                ),
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
                                                      .deepOrange700,
                                                  width: getHorizontalSize(
                                                    1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: getVerticalSize(
                                                21.00,
                                              ),
                                              width: getHorizontalSize(
                                                72.00,
                                              ),
                                              margin: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  9.00,
                                                ),
                                                right: getHorizontalSize(
                                                  43.00,
                                                ),
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
                                                      .deepOrange700,
                                                  width: getHorizontalSize(
                                                    1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              13.00,
                                            ),
                                            top: getVerticalSize(
                                              9.00,
                                            ),
                                            right: getHorizontalSize(
                                              13.00,
                                            ),
                                          ),
                                          child: Text(
                                            "Flavors",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color:
                                                  ColorConstant.deepOrange700,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Biryani',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              height: getVerticalSize(
                                                21.00,
                                              ),
                                              width: getHorizontalSize(
                                                72.00,
                                              ),
                                              margin: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  13.00,
                                                ),
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
                                                      .deepOrange700,
                                                  width: getHorizontalSize(
                                                    1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: getVerticalSize(
                                                21.00,
                                              ),
                                              width: getHorizontalSize(
                                                72.00,
                                              ),
                                              margin: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  9.00,
                                                ),
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
                                                      .deepOrange700,
                                                  width: getHorizontalSize(
                                                    1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: getVerticalSize(
                                                21.00,
                                              ),
                                              width: getHorizontalSize(
                                                72.00,
                                              ),
                                              margin: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  9.00,
                                                ),
                                                right: getHorizontalSize(
                                                  124.00,
                                                ),
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
                                                      .deepOrange700,
                                                  width: getHorizontalSize(
                                                    1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              13.00,
                                            ),
                                            top: getVerticalSize(
                                              11.00,
                                            ),
                                            right: getHorizontalSize(
                                              13.00,
                                            ),
                                          ),
                                          child: Text(
                                            "Cuisine",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color:
                                                  ColorConstant.deepOrange700,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Biryani',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              height: getVerticalSize(
                                                21.00,
                                              ),
                                              width: getHorizontalSize(
                                                72.00,
                                              ),
                                              margin: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  13.00,
                                                ),
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
                                                      .deepOrange700,
                                                  width: getHorizontalSize(
                                                    1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: getVerticalSize(
                                                21.00,
                                              ),
                                              width: getHorizontalSize(
                                                72.00,
                                              ),
                                              margin: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  9.00,
                                                ),
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
                                                      .deepOrange700,
                                                  width: getHorizontalSize(
                                                    1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: getVerticalSize(
                                                21.00,
                                              ),
                                              width: getHorizontalSize(
                                                72.00,
                                              ),
                                              margin: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  9.00,
                                                ),
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
                                                      .deepOrange700,
                                                  width: getHorizontalSize(
                                                    1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: getVerticalSize(
                                                21.00,
                                              ),
                                              width: getHorizontalSize(
                                                72.00,
                                              ),
                                              margin: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  9.00,
                                                ),
                                                right: getHorizontalSize(
                                                  43.00,
                                                ),
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
                                                      .deepOrange700,
                                                  width: getHorizontalSize(
                                                    1.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: getVerticalSize(
                                              46.00,
                                            ),
                                            width: getHorizontalSize(
                                              85.00,
                                            ),
                                            margin: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                13.00,
                                              ),
                                              top: getVerticalSize(
                                                16.00,
                                              ),
                                              right: getHorizontalSize(
                                                13.00,
                                              ),
                                            ),
                                            child: Stack(
                                              alignment:
                                                  Alignment.bottomCenter,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.topLeft,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: getVerticalSize(
                                                        10.00,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      "Take a  Quiz",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .deepOrange700,
                                                        fontSize: getFontSize(
                                                          14,
                                                        ),
                                                        fontFamily: 'Biryani',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        25.00,
                                                      ),
                                                      top: getVerticalSize(
                                                        10.00,
                                                      ),
                                                      right:
                                                          getHorizontalSize(
                                                        25.00,
                                                      ),
                                                    ),
                                                    child: Container(
                                                      height: getSize(
                                                        34.00,
                                                      ),
                                                      width: getSize(
                                                        34.00,
                                                      ),
                                                      child: SvgPicture.asset(
                                                        ImageConstant
                                                            .imgExpandmore,
                                                        fit: BoxFit.fill,
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
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        56.00,
                                      ),
                                      right: getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Explore Recipies",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.deepOrange700,
                                        fontSize: getFontSize(
                                          20,
                                        ),
                                        fontFamily: 'Biryani',
                                        fontWeight: FontWeight.w700,
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
                                  144.00,
                                ),
                                bottom: getVerticalSize(
                                  144.00,
                                ),
                              ),
                              child: Container(
                                height: getVerticalSize(
                                  70.00,
                                ),
                                width: getHorizontalSize(
                                  428.00,
                                ),
                                child: SvgPicture.asset(
                                  ImageConstant.imgGroup1,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          6.00,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    28.00,
                                  ),
                                ),
                                child: Image.asset(
                                  ImageConstant.imgRectangle156,
                                  height: getSize(
                                    97.00,
                                  ),
                                  width: getSize(
                                    97.00,
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    20.00,
                                  ),
                                ),
                                child: Image.asset(
                                  ImageConstant.imgRectangle154,
                                  height: getSize(
                                    97.00,
                                  ),
                                  width: getSize(
                                    97.00,
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    20.00,
                                  ),
                                ),
                                child: Image.asset(
                                  ImageConstant.imgRectangle155,
                                  height: getSize(
                                    97.00,
                                  ),
                                  width: getSize(
                                    97.00,
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    20.00,
                                  ),
                                ),
                                child: Image.asset(
                                  ImageConstant.imgRectangle157,
                                  height: getVerticalSize(
                                    97.00,
                                  ),
                                  width: getHorizontalSize(
                                    49.00,
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                6.00,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: getHorizontalSize(
                                    97.00,
                                  ),
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      28.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Dish Name 1",
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.deepOrange700,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Biryani',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    97.00,
                                  ),
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      20.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Dish Name 2",
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.deepOrange700,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Biryani',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    97.00,
                                  ),
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      20.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Dish Name 3",
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.deepOrange700,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Biryani',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    49.00,
                                  ),
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      20.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Dish Name 4",
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.deepOrange700,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Biryani',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                28.00,
                              ),
                              top: getVerticalSize(
                                19.00,
                              ),
                              right: getHorizontalSize(
                                28.00,
                              ),
                            ),
                            child: Text(
                              "Explore Restaurants",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.deepOrange700,
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
                                6.00,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      28.00,
                                    ),
                                  ),
                                  child: Image.asset(
                                    ImageConstant.imgRectangle161,
                                    height: getSize(
                                      97.00,
                                    ),
                                    width: getSize(
                                      97.00,
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      20.00,
                                    ),
                                  ),
                                  child: Image.asset(
                                    ImageConstant.imgRectangle158,
                                    height: getSize(
                                      97.00,
                                    ),
                                    width: getSize(
                                      97.00,
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      20.00,
                                    ),
                                  ),
                                  child: Image.asset(
                                    ImageConstant.imgRectangle159,
                                    height: getSize(
                                      97.00,
                                    ),
                                    width: getSize(
                                      97.00,
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      20.00,
                                    ),
                                  ),
                                  child: Image.asset(
                                    ImageConstant.imgRectangle160,
                                    height: getVerticalSize(
                                      97.00,
                                    ),
                                    width: getHorizontalSize(
                                      49.00,
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                6.00,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: getHorizontalSize(
                                    97.00,
                                  ),
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      28.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Dish Name 1",
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.deepOrange700,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Biryani',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    97.00,
                                  ),
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      20.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Dish Name 2",
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.deepOrange700,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Biryani',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    97.00,
                                  ),
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      20.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Dish Name 3",
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.deepOrange700,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Biryani',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    49.00,
                                  ),
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      20.00,
                                    ),
                                  ),
                                  child: Text(
                                    "Dish Name 4",
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: ColorConstant.deepOrange700,
                                      fontSize: getFontSize(
                                        16,
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
