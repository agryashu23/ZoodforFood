import 'package:flutter/material.dart';

import '../utils/color_constant.dart';
import '../utils/math_utils.dart';


class Filters extends StatefulWidget {
  const Filters({Key? key, required this.index}) : super(key: key);
  final String index;

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {

  @override
  Widget build(BuildContext context) {
    var wSize = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left:wSize*0.02 ),

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
          widget.index,
          // filters[widget.index],
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorConstant
                .black900,
            fontSize: getFontSize(
              14,
            ),
            fontFamily: 'Biryani',
            fontWeight:
            FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
