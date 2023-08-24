import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:simpanda_idea1/src/cross_platform_svg.dart';
import 'package:simpanda_idea1/src/fragment/bounce_grey.dart';
import 'package:simpanda_idea1/src/provider/ui_provider.dart';
import 'package:simpanda_idea1/src/screen/apply_list_screen.dart';
import 'package:simpanda_idea1/src/screen/festival_list_screen.dart';
import 'package:simpanda_idea1/src/screen/profile_screen.dart';
import 'package:simpanda_idea1/src/theme/theme.dart';

class FrameScreen extends StatelessWidget {
  const FrameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    UiProvider uiProvider = Provider.of<UiProvider>(context);

    return CupertinoPageScaffold(
      child: Column(
        children: [
          Expanded(
            child: (() {
              switch (uiProvider.page) {
                case 0: return const FestivalListScreen();
                case 1: return const ApplyListScreen();
                case 2: return const ProfileScreen();
                default: return const FestivalListScreen();
              }
            })()
          ),
          bnb(context, uiProvider)
        ],
      )
    );
  }

  Widget bnb(BuildContext context, UiProvider uiProvider) {
    return Container(
      width: double.infinity,
      color: ColorTheme.blackPoint,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 2,),
          item("행사", uiProvider, 0, (uiProvider.page == 0) ? "map-pin-act.svg" : "map-pin-inact.svg"),
          const Spacer(flex: 1,),
          item("신청", uiProvider, 1, (uiProvider.page == 1) ? "squares-2x2-act.svg" : "squares-2x2-inact.svg"),
          const Spacer(flex: 1,),
          item("프로필", uiProvider, 2, ""),
          const Spacer(flex: 2,)
        ]
      )
    );
  }

  Widget item(String text, UiProvider uiProvider, int index, String icon) {
    return BounceGrey(
      onTap: () {
        uiProvider.page = index;
      },
      scale: 0.8,
      activeColor: ColorTheme.blackLight,
      paddingVertical: 10,
      paddingHorizontal: 15,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          (index == 2) ?
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset("asset/person1.png", width: 30,)
                ),
              ) :
              SvgPicture.asset("asset/$icon", width: 25),
          const SizedBox(height: 5,),
          Text(text, style: const TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 10),)
        ]
      ),
    );
  }
}
