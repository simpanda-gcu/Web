import 'package:flutter/cupertino.dart';

class UiProvider extends ChangeNotifier {
  int _page = 0;

  int get page => _page;
  set page(int changePage) {
    _page = changePage;
    notifyListeners();
  }
}