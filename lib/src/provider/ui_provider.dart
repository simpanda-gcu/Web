import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:simpanda_idea1/src/screen/frame_screen.dart';

import '../../main.dart';

class UiProvider extends ChangeNotifier {
  int _page = 0;

  Widget _now = FrameScreen();

  int get page => _page;
  set page(int changePage) {
    _page = changePage;
    notifyListeners();
  }
  Widget get now => _now;
  set now(Widget route) {
    _now = route;
    notifyListeners();
  }
}