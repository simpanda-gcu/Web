import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simpanda_idea1/src/theme/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Center(
        child: Text("프로필", style: FontTheme.title)
      )
    );
  }
}
