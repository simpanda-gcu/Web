import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:simpanda_idea1/src/fragment/bounce_grey.dart';
import 'package:simpanda_idea1/src/provider/ui_provider.dart';

import '../../router.dart';
import '../provider/festival_provider.dart';
import '../theme/theme.dart';

class FestivalCard extends StatelessWidget {
  const FestivalCard({
    Key? key,
    required this.pk,
    required this.title,
    required this.startDate,
    required this.endDate,
    required this.thumbnail,
    required this.personImg,
    required this.participation,
    required this.participateNum,
    required this.summary,
    required this.desc,
    required this.link
  }) : super(key: key);

  final int pk;
  final String title;
  final String startDate;
  final String endDate;
  final String thumbnail;
  final String personImg;
  final List<String> participation;
  final String participateNum;
  final String summary;
  final String desc;
  final String link;

  @override
  Widget build(BuildContext context) {

    FestivalProvider festivalProvider = Provider.of<FestivalProvider>(context);
    UiProvider uiProvider = Provider.of<UiProvider>(context);

    return BounceGrey(
      onTap: () {
        festivalProvider.setNowFestival = pk;
        FRouter.router.navigateTo(context, Routes.festival);
      },
      paddingHorizontal: 15,
      paddingVertical: 15,
      scale: 0.98,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(thumbnail, width: double.infinity, fit: BoxFit.cover,)
            ),
            const SizedBox(height: 13),
            Text(title, style: FontTheme.h2,),
            const SizedBox(height: 7),
            Text(summary, style: FontTheme.desc,),
            Text("$startDate ~ $endDate", style: FontTheme.descPoint),
            const SizedBox(height: 13),
            Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.network(personImg, width: 25, height: 25, fit: BoxFit.cover,)
                  ),
                  const SizedBox(width: 7),
                  Text(participation[0], style: FontTheme.descBold,),
                  Text("님이 참여해요 · $participateNum", style: FontTheme.desc,)
                ]
            ),
            const SizedBox(height: 10)
          ]
      ),
    );
  }
}
