import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simpanda_idea1/src/provider/ui_provider.dart';
import 'package:simpanda_idea1/src/theme/theme.dart';

import '../component/registry.dart';

class FestivalScreen extends StatelessWidget {
  const FestivalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    UiProvider uiProvider = Provider.of<UiProvider>(context);

    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      color: Colors.white,
      width: double.infinity,
      child: ListView(
        children: [
          const SizedBox(height: 50),
          Row(
            children: [
              const SizedBox(width: 20),
              Text("오프라인 행사", style: FontTheme.title,),
            ],
          ),
          const SizedBox(height: 30),
          Column(
            children: Registry.getComponents(uiProvider.festivalUI, context)
          ),
          const SizedBox(height: 30)
        ]
      ),
    );
  }
}