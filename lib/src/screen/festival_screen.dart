import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:simpanda_idea1/router.dart';
import 'package:simpanda_idea1/src/fragment/bounce_button.dart';
import 'package:simpanda_idea1/src/fragment/bounce_grey.dart';
import 'package:simpanda_idea1/src/provider/festival_provider.dart';
import 'package:simpanda_idea1/src/theme/theme.dart';

import '../fragment/bounce.dart';

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
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                child: Image.network(festivalProvider.nowFestival.thumbnail, width: double.infinity, fit: BoxFit.cover,)
              ),
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      ColorTheme.blackPoint.withOpacity(0.5),
                      ColorTheme.blackPoint.withOpacity(0)
                    ]
                  )
                ),
                child: Row(
                  children: [
                    Bounce(
                      onTap: () {
                        FRouter.router.pop(context);
                      },
                      scale: 0.7,
                      child: SvgPicture.asset("asset/chevron-left.svg", width: 25, height: 25,)
                    ),
                    const Spacer()
                  ],
                )
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(festivalProvider.nowFestival.title, style: FontTheme.h2,),
                const SizedBox(height: 15),
                Text("${festivalProvider.nowFestival.startDate} ~ ${festivalProvider.nowFestival.endDate}", style: FontTheme.descPoint),
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorTheme.greyLightest
                  ),
                  child: Text(festivalProvider.nowFestival.summary, style: const TextStyle(fontFamily: 'NotoEmoji'),)
                ),
                const SizedBox(height: 15),
                Text(festivalProvider.nowFestival.desc, style: const TextStyle(fontFamily: 'NotoEmoji'),),
                const SizedBox(height: 15,),
              ],
            ),
          ),
          _block("map-pin.svg", "위치", "코엑스 B1 Hall B",
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                border: Border.all(width: 1, color: ColorTheme.greyLight)
              ),
            )
          ),
          const SizedBox(height: 15,),
          _block("currency-dollar.svg", "참가 비용", "1000원", null),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: BounceButton(
              height: 60,
              textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
              onTap: () {},
              text: "참여해요",
              width: double.infinity,
            ),
          )
        ]
      )
    );
  }

  Widget _block(String icon, String title, String desc, Widget? child) {
    return BounceGrey(
      paddingVertical: 10,
      paddingHorizontal: 20,
      onTap: () {},
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset("asset/$icon", width: 20,),
              const SizedBox(width: 7),
              Text(title, style: FontTheme.h2),
              const Spacer(),
              Text(desc),
              const SizedBox(width: 10,)
            ]
          ),
          if (child != null) Column(
            children: [
              const SizedBox(height: 15,),
              child,
            ],
          )
        ]
      )
    );
  }
}
