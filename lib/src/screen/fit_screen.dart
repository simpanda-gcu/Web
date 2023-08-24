import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simpanda_idea1/src/theme/theme.dart';

class FitScreen extends StatelessWidget {
  const FitScreen({Key? key, required this.screen}) : super(key: key);

  final Widget screen;
  final double breakpoint = 450;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      breakpoints: ScreenBreakpoints(
        tablet: breakpoint,
        desktop: breakpoint,
        watch: breakpoint
      ),
      builder: (context, sizingInformation) {
        return CupertinoPageScaffold(
          backgroundColor: ColorTheme.white,
          child: Center(
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(width: 1, color: ColorTheme.greyLight),
                  right: BorderSide(width: 1, color: ColorTheme.greyLight)
                )
              ),
              width: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? double.infinity : breakpoint,
              child: screen
            ),
          )
        );
      }
    );
  }
}
