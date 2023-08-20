import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/theme.dart';

class ApplyListScreen extends StatelessWidget {
  const ApplyListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: ListView(
        children: [
          const SizedBox(height: 50),
          Text("신청한 행사", style: FontTheme.title),
          const SizedBox(height: 50)
        ]
      )
    );
  }
}
