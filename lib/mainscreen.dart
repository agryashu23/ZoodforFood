import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoodforfood/utils/color_constant.dart';
import 'package:zoodforfood/utils/image_constant.dart';
import 'package:zoodforfood/utils/math_utils.dart';
import 'package:zoodforfood/widgets/filters.dart';
import 'package:zoodforfood/widgets/foryou.dart';
import 'package:zoodforfood/widgets/foryoucook.dart';
import 'package:zoodforfood/widgets/group53_item_widget.dart';

import 'database.dart';

class MainPAge extends StatefulWidget {
  @override
  State<MainPAge> createState() => _MainPAgeState();
}

class _MainPAgeState extends State<MainPAge> with SingleTickerProviderStateMixin{
  List filters = ["Taste" , "Cuisine" , "Mode" , "Type" , "Taste1" , "Taste2"];
  String _site = 'To Cook';

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
                              "For you-",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  24,
                                ),
                                fontFamily: 'Biryani',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: hSize*0.012,horizontal: wSize*0.04),
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
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height:hSize*0.06,
                                  decoration: BoxDecoration(
                                    color: ColorConstant.orangeA2007f,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(getHorizontalSize(
                                      10.00,
                                    ),),
                                        topRight: Radius.circular( getHorizontalSize(
                                      10.00,
                                    ),)
                                    )
                                  ),
                                  child: TabBar(
                                    labelColor: ColorConstant.whiteA700,
                                    unselectedLabelColor: ColorConstant.deepOrange5007f,
                                    // labelStyle: TextStyle(
                                    //   color: ColorConstant.whiteA700,
                                    // ),
                                    // unselectedLabelStyle: TextStyle(color:ColorConstant.deepOrange5007f,),
                                    indicator: BoxDecoration(
                                      color: ColorConstant.deepOrangeA400,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(getHorizontalSize(
    10.00,),),
                                        topRight: Radius.circular(getHorizontalSize(
                                        10.00,),),
                                      )
                                    ),
                                      tabs:  [
                                        Tab(
                                            child: Text(
                                              "To Dine/Order",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
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
                                Container(
                                  margin: EdgeInsets.only(top: hSize*0.02),
                                  height: hSize*0.15,
                                  child:TabBarView(
                                    children: [
                                     ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: true,
                                        itemCount: 3,
                                        itemBuilder: (context, index) {
                                          return ForYou();
                                        },
                                      ),
                                      ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: true,
                                        itemCount: 3,
                                        itemBuilder: (context, index) {
                                          return ForYouCook();
                                        },
                                      ),

                                    ],
                                  )
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
                                24.00,
                              ),
                              top: getVerticalSize(
                                20.00,
                              ),

                            ),
                            child: Text(
                              "Confused?",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  24,
                                ),
                                fontFamily: 'Biryani',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: hSize*0.18,
                            width: double.infinity,
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                10.00,
                              ),
                              top: getVerticalSize(5),
                              right: getHorizontalSize(
                                10.00,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                              border: Border.all(width: 1.0,color: ColorConstant.deepOrange700.withOpacity(0.5)),
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
                              children: [
                                SizedBox(
                                  height: hSize*0.05,
                                  child: Stack(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: hSize*0.01,left: wSize*0.03),
                                        child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: true,
                                        itemCount: filters.length,
                                        itemBuilder: (context, index) {
                                          return Filters(index:filters[index]);
                                        },
                                    ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white
                                        ),
                                        margin: EdgeInsets.only(left: wSize*0.8),
                                        alignment: Alignment.center,
                                        height: getSize(
                                          50.00,
                                        ),
                                        width: getSize(
                                          80.00,
                                        ),
                                        child: SvgPicture.asset(
                                          ImageConstant.imgMifilter,
                                          fit: BoxFit.fill,
                                        ),
                                      ),

                            ],
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width:wSize*0.4,
                                      child: Column(
                                      children: [
                                        Padding(
                                        padding: EdgeInsets.only(top: getVerticalSize(5)),
                                        child: ListTile(
                                          title: const Text('To Cook'),
                                          contentPadding: EdgeInsets.all(0),
                                          visualDensity: VisualDensity(horizontal: -4, vertical: -4),

                                          leading: Radio(
                                            value: "To Cook",
                                            activeColor: ColorConstant.deepOrange700,
                                            groupValue: _site,
                                            onChanged: (value) {
                                              setState(() {
                                                _site = value.toString();
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                        ListTile(
                                          title: const Text('To Dine/Order'),
                                          contentPadding: EdgeInsets.all(0),
                                          visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                                          leading: Radio(
                                            value: "TO Dine",
                                            groupValue: _site,
                                            onChanged: (value) {
                                              setState(() {
                                                _site = value.toString();
                                              });
                                            },
                                          ),
                                        ),
              ],
                                  ),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(top: hSize*0.052,left: wSize*0.04),
                                      alignment: Alignment.center,
                                      height: getVerticalSize(
                                        35.00,
                                      ),
                                      width: getHorizontalSize(
                                        110.00,
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
                                            14,
                                          ),
                                          fontFamily: 'Biryani',
                                          fontWeight:
                                          FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Group53ItemWidget(),


        //
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
