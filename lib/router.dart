import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:simpanda_idea1/src/screen/festival_screen.dart';
import 'package:simpanda_idea1/src/screen/fit_screen.dart';
import 'package:simpanda_idea1/src/screen/frame_screen.dart';
import 'package:simpanda_idea1/src/screen/login_screen.dart';

class Routes {
  static const String home = "/";
  static const String login = "/login";
  static const String festival = "/festival:information";
}

class FRouter {
  static FluroRouter router = FluroRouter();

  static var homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const FitScreen(screen: FrameScreen());
      });

  static var loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return const FitScreen(screen: LoginScreen());
      }
  );
  
  static var festivalHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return const FitScreen(screen: FestivalScreen());
    }
  );

  static void setupRouter() {
    router.define(Routes.home, handler: homeHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.login, handler: loginHandler, transitionType: TransitionType.fadeIn);
    router.define(Routes.festival, handler: festivalHandler, transitionType: TransitionType.fadeIn);
  }
}