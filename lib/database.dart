import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoodforfood/utils/color_constant.dart';
import 'package:zoodforfood/utils/image_constant.dart';

class MySearchDelegate extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) =>
      // TODO: implement buildActions
  [
    GestureDetector(
      onTap: (){
      },
      child: Padding(
        padding:EdgeInsets.only(right: 5),
        child: SvgPicture.asset(
          ImageConstant.imgMic,
        ),
      ),
    ),
  ];

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        icon:Icon(Icons.arrow_back,color:ColorConstant.deepOrange700),
        onPressed:(){
          Navigator.pop(context, false);
        }
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container();

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Container();

  }

}

