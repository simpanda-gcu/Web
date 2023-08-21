import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/nav2/get_router_delegate.dart';
import 'package:get/get_navigation/src/root/get_cupertino_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simpanda_idea1/src/provider/festival_provider.dart';
import 'package:simpanda_idea1/src/provider/ui_provider.dart';
import 'package:simpanda_idea1/src/screen/desktop_screen.dart';
import 'package:simpanda_idea1/src/screen/festival_list_screen.dart';
import 'package:simpanda_idea1/src/screen/festival_screen.dart';
import 'package:simpanda_idea1/src/screen/frame_screen.dart';
import 'package:simpanda_idea1/src/screen/login_screen.dart';
import 'package:simpanda_idea1/src/screen/mobile_screen.dart';
import 'package:simpanda_idea1/src/theme/theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider()),
        ChangeNotifierProvider(create: (_) => FestivalProvider())
      ],
      child: App()
    )
  );
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    UiProvider uiProvider = Provider.of<UiProvider>(context);

    return DesktopScreen(screen: const FrameScreen());
  }
}

abstract class Routes {
  static const HOME = '/';
  static const LOGIN = '/login';
  static const FESTIVAL = '/festival';
  static const FESTIVAL_LIST = '/festival_list';
}

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => const FrameScreen(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: Routes.FESTIVAL,
      page: () => const FestivalScreen(),
    ),
    GetPage(
      name: Routes.FESTIVAL_LIST,
      page: () => FestivalListScreen()
    )
  ];
}