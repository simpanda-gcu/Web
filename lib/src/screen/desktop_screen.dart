import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simpanda_idea1/src/screen/festival_list_screen.dart';
import 'package:simpanda_idea1/src/screen/festival_screen.dart';
import 'package:simpanda_idea1/src/screen/frame_screen.dart';
import 'package:simpanda_idea1/src/screen/login_screen.dart';
import 'package:simpanda_idea1/src/theme/theme.dart';

class DesktopScreen extends StatelessWidget {
  DesktopScreen({Key? key, required this.screen}) : super(key: key);

  final Widget screen;
  final _navigatorKey = GlobalKey<NavigatorState>();

  CupertinoPageRoute _onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case '/': return CupertinoPageRoute(builder: (context) => const FrameScreen());
      case '/login': return CupertinoPageRoute(builder: (context) => const LoginScreen());
      case '/festival_list': return CupertinoPageRoute(builder: (context) => const FestivalListScreen());
      case '/festival': return CupertinoPageRoute(builder: (context) => const FestivalScreen());
      default: throw Exception('Unknown route: ${setting.name}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(color: ColorTheme.blackPoint)
        )
      ),
      home: Container(
        width: double.infinity,
        height: double.infinity,
        color: ColorTheme.blackLight,
        child: Center(
          child: SizedBox(
            width: 600,
            height: double.infinity,
            child: Navigator(
              key: _navigatorKey,
              initialRoute: '/',
              onGenerateRoute: _onGenerateRoute,
            ),
          ),
        )
      ),
    );
  }
}
