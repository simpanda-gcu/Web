import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simpanda_idea1/src/component/festival_card_component.dart';
import 'package:simpanda_idea1/src/fragment/festival_card_fragment.dart';
import 'package:simpanda_idea1/src/provider/festival_provider.dart';
import 'package:simpanda_idea1/src/provider/ui_provider.dart';
import 'package:simpanda_idea1/src/theme/theme.dart';

import '../component/registry.dart';

class FestivalListScreen extends StatelessWidget {
  const FestivalListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    UiProvider uiProvider = Provider.of<UiProvider>(context);
    FestivalProvider festivalProvider = Provider.of<FestivalProvider>(context);

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
            children: [
              for (int i = 0; i < 3; i++)
                FestivalCard(
                    pk: festivalProvider.festival(i).pk,
                    title: festivalProvider.festival(i).title,
                    startDate: festivalProvider.festival(i).startDate,
                    endDate: festivalProvider.festival(i).endDate,
                    thumbnail: festivalProvider.festival(i).thumbnail,
                    personImg: festivalProvider.festival(i).personImg,
                    personName: festivalProvider.festival(i).personName,
                    participateNum: festivalProvider.festival(i).participateNum
                )
            ]
          ),
          const SizedBox(height: 30)
        ]
      ),
    );
  }
}