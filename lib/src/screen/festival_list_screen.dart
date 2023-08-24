import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simpanda_idea1/src/component/festival_card_component.dart';
import 'package:simpanda_idea1/src/fragment/festival_card_fragment.dart';
import 'package:simpanda_idea1/src/provider/festival_provider.dart';
import 'package:simpanda_idea1/src/provider/ui_provider.dart';
import 'package:simpanda_idea1/src/theme/theme.dart';

import '../fragment/bounce.dart';
import '../model/Festival.dart';

class FestivalListScreen extends StatelessWidget {
  const FestivalListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    FestivalProvider festivalProvider = Provider.of<FestivalProvider>(context);

    return Container(
      color: Colors.white,
      width: double.infinity,
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: double.infinity,
          viewportFraction: 1,
          enableInfiniteScroll: false
        ),
        itemCount: 3,
        itemBuilder: (context, itemIndex, pageViewIndex) {
          return ListView.builder(
              itemCount: festivalProvider.festivals.length,
              itemBuilder: (context, festivalIndex) {
                Festival festival = festivalProvider.festival(festivalIndex);
                return FestivalCard(
                  pk: festival.pk,
                  thumbnail: festival.thumbnail,
                  title: festival.title,
                  startDate: festival.startDate,
                  endDate: festival.endDate,
                  participation: festival.participation,
                  personImg: festival.personImg,
                  participateNum: festival.participateNum,
                  summary: festival.summary,
                  desc: festival.desc,
                  link: festival.link,
                );
              }
          );
        },
      )
    );
  }
}