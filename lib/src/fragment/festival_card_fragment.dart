import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:simpanda_idea1/src/fragment/bounce.dart';
import 'package:simpanda_idea1/src/fragment/bounce_grey.dart';

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
    required this.personName,
    required this.participateNum
  }) : super(key: key);

  final int pk;
  final String title;
  final String startDate;
  final String endDate;
  final String thumbnail;
  final String personImg;
  final String personName;
  final String participateNum;

  @override
  Widget build(BuildContext context) {

    FestivalProvider festivalProvider = Provider.of<FestivalProvider>(context);

    return BounceGrey(
      onTap: () {
        print(pk);
        festivalProvider.setNowFestival = pk;
        Navigator.pushNamed(context, '/festival', arguments: pk);
      },
      paddingHorizontal: 20,
      paddingVertical: 20,
      scale: 0.98,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(thumbnail, width: double.infinity, fit: BoxFit.cover,)
            ),
            const SizedBox(height: 20),
            Text(title, style: FontTheme.h2,),
            const SizedBox(height: 10),
            Text("$startDate ~ $endDate", style: FontTheme.descPoint),
            const SizedBox(height: 20),
            Row(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorTheme.greyLight
                    )
                  ),
                  const SizedBox(width: 10),
                  Text(personName, style: FontTheme.descBold,),
                  Text("님이 참여해요 · $participateNum")
                ]
            ),
          ]
      ),
    );
  }
}
