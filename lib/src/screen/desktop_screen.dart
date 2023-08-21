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

class DesktopScreen extends StatelessWidget {
  DesktopScreen({Key? key, required this.screen}) : super(key: key);

  final Widget screen;
  final _navigatorKey = GlobalKey<NavigatorState>();

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
        return Container(
            width: double.infinity,
            height: double.infinity,
            color: ColorTheme.blackLight,
            child: Center(
              child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: GetCupertinoApp.router(
                    getPages: AppPages.pages,
                    routerDelegate: DesktopRouterDelegate(navigatorKey: _navigatorKey, onGenerateRoute: _onGenerateRoute),
                    theme: const CupertinoThemeData(
                        textTheme: CupertinoTextThemeData(
                            textStyle: TextStyle(color: ColorTheme.blackPoint)
                        )
                    ),
                  )
              ),
            )
        );
      },
    );
  }
}

class DesktopRouterDelegate extends GetDelegate {
  DesktopRouterDelegate({required this.navigatorKey, required this.onGenerateRoute});

  final navigatorKey;
  final onGenerateRoute;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      onPopPage: (route, result) => route.didPop(result),
      pages: currentConfiguration != null
          ? [currentConfiguration!.currentPage!]
          : [GetNavConfig.fromRoute(Routes.HOME)!.currentPage!],
    );
  }
}
