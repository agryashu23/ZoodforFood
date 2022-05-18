import 'package:flutter/material.dart';

import '../recipepage.dart';
import '../utils/color_constant.dart';
import '../utils/image_constant.dart';
import '../utils/math_utils.dart';

class ForYouCook extends StatefulWidget {
  const ForYouCook({Key? key}) : super(key: key);

  @override
  State<ForYouCook> createState() => _ForYouCookState();
}

class _ForYouCookState extends State<ForYouCook> {
  @override
  Widget build(BuildContext context) {
    var wSize = MediaQuery.of(context).size.width;
    var hSize = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>RecipePage()));

      },
      child: SizedBox(
        width: wSize*0.3,
        child: Column(
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
            Padding(
              padding: EdgeInsets.only(top: hSize*0.01),
              child: Text(
                "Recipe 1 of Dish X",
                maxLines: null,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorConstant
                      .deepOrangeA400,
                  fontSize: getFontSize(
                    12,
                  ),
                  fontFamily: 'Biryani',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
