import 'package:flutter/cupertino.dart';

abstract class Component {
  Widget compose(Map<String, dynamic> args, BuildContext context);
}