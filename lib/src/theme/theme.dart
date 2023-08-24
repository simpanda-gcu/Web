import 'package:flutter/cupertino.dart';

class ColorTheme {
  static const Color greyLightest = Color(0xffF4F6F9);
  static const Color greyLight = Color(0xffD8DADF);
  static const Color greyPoint = Color(0xffA4A5A8);
  static const Color blackLight = Color(0xff393D44);
  static const Color blackPoint = Color(0xff202224);
  static const Color bluePoint = Color(0xff0068ff);
  static const Color blueThick = Color(0xff004AB7);
  static const Color white = Color(0xffFFFFFF);
}

class FontTheme {
  static TextStyle title = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20
  );
  static TextStyle h2 = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16
  );
  static TextStyle descPoint = const TextStyle(
    fontSize: 12,
    color: ColorTheme.bluePoint
  );
  static TextStyle descBold = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600
  );
  static TextStyle desc = const TextStyle(
    fontSize: 12
  );
}