import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simpanda_idea1/src/provider/festival_provider.dart';
import 'package:simpanda_idea1/src/theme/theme.dart';

class FestivalScreen extends StatelessWidget {
  const FestivalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    FestivalProvider festivalProvider = Provider.of<FestivalProvider>(context);

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: ListView(
        children: [
          Text(festivalProvider.nowFestival.title, style: FontTheme.title,)
        ]
      )
    );
  }
}
