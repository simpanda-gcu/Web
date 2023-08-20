import 'package:flutter/cupertino.dart';

import 'component.dart';

class TitleComponent implements Component {
  @override
  Widget compose(Map<String, dynamic> args, BuildContext context) {
    return Text(
      args['text'],
      style: const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w600,
      )
    );
  }
}