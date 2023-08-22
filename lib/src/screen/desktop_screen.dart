import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simpanda_idea1/src/provider/ui_provider.dart';
import 'package:simpanda_idea1/src/theme/theme.dart';

import '../../main.dart';
import 'festival_list_screen.dart';
import 'festival_screen.dart';
import 'frame_screen.dart';
import 'login_screen.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key, required this.screen}) : super(key: key);

  final Widget screen;

  CupertinoPageRoute _onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case '/': return CupertinoPageRoute(builder: (context) => const FrameScreen());
      case '/login': return CupertinoPageRoute(builder: (context) => const LoginScreen());
      case '/festival_list': return CupertinoPageRoute(builder: (context) => FestivalListScreen());
      case '/festival': return CupertinoPageRoute(builder: (context) => const FestivalScreen());
      default: throw Exception('Unknown route: ${setting.name}');
    }
  }

  @override
  Widget build(BuildContext context) {

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        print("hi");
        return Container(
          width: double.infinity,
          height: double.infinity,
          color: ColorTheme.blackLight,
          child: Center(
            child: Container(
              width: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? double.infinity : 600,
              height: double.infinity,
              color: Colors.white,
              child: screen
            ),
          ),
        );
      }
    );
  }
}
