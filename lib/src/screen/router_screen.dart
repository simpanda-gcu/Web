import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simpanda_idea1/src/screen/festival_list_screen.dart';
import 'package:simpanda_idea1/src/screen/festival_screen.dart';
import 'package:simpanda_idea1/src/screen/frame_screen.dart';
import 'package:simpanda_idea1/src/screen/login_screen.dart';
import 'package:simpanda_idea1/src/theme/theme.dart';

import '../../main.dart';

class RouterScreen extends StatelessWidget {
  RouterScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp.router(
      getPages: AppPages.pages,
      routerDelegate: DesktopRouterDelegate(),
      theme: const CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(color: ColorTheme.blackPoint)
        )
      )
    );
  }
}