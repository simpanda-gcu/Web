import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simpanda_idea1/src/theme/theme.dart';

import '../../main.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key, required this.screen}) : super(key: key);

  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp.router(
      theme: const CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(color: ColorTheme.blackPoint)
        )
      ),
      getPages: AppPages.pages,
      routerDelegate: AppRouterDelegate(),
    );
  }
}

class AppRouterDelegate extends GetDelegate {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onPopPage: (route, result) => route.didPop(result),
      pages: currentConfiguration != null
        ? [currentConfiguration!.currentPage!]
        : [GetNavConfig.fromRoute(Routes.HOME)!.currentPage!],
    );
  }
}
