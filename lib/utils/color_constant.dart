import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color deepOrange700 = fromHex('#e34f24');

  static Color black900 = fromHex('#000000');

  static Color black90040 = fromHex('#40000000');

  static Color black9003f = fromHex('#3f000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color deepOrange7007f = fromHex('#7fe34f24');
  static Color deepOrange5007f = fromHex('#7fff541f');

  static Color deepOrangeA4001a = fromHex('#1af53300');


  static Color yellow50 = fromHex('#fff5e8');

  static Color orangeA2007f = fromHex('#7ffaab36');


  static Color deepOrangeA400 = fromHex('#f53300');



  static Color gray100 = fromHex('#f5f5f5');


  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
