import 'package:flutter/cupertino.dart';

class ColorTheme {
  static const Color greyLightest = Color(0xffF4F6F9);
  static const Color greyLight = Color(0xffD8DADF);
  static const Color greyPoint = Color(0xffA4A5A8);
  static const Color blackLight = Color(0xff393D44);
  static const Color blackPoint = Color(0xff202224);
  static const Color bluePoint = Color(0xff0068ff);
}

class FontTheme {
  static TextStyle title = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 26
  );
  static TextStyle h2 = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18
  );
  static TextStyle descPoint = const TextStyle(
    fontSize: 14,
    color: ColorTheme.bluePoint
  );
  static TextStyle descBold = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600
  );
}