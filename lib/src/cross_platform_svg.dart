import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CrossPlatformSvg {
  static Widget asset(
      String assetPath, {
        required double width,
        required double height,
        BoxFit fit = BoxFit.contain,
        required Color color,
        alignment = Alignment.center,
        required String semanticsLabel,
      }) {
    // `kIsWeb` is a special Flutter variable that just exists
    // Returns true if we're on web, false for mobile
    if (kIsWeb) {
      return Image.network(
        assetPath,
        width: width,
        height: height,
        fit: fit,
        color: color,
        alignment: alignment,
      );
    } else {
      return SvgPicture.network(
        assetPath,
        width: width,
        height: height,
        fit: fit,
        color: color,
        alignment: alignment,
        placeholderBuilder: (_) => Container(
          width: 30,
          height: 30,
          padding: EdgeInsets.all(30),
          child: const CircularProgressIndicator(),
        ),
      );
    }
  }
}