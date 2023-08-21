import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simpanda_idea1/src/provider/festival_provider.dart';
import 'package:simpanda_idea1/src/provider/ui_provider.dart';
import 'package:simpanda_idea1/src/screen/desktop_screen.dart';
import 'package:simpanda_idea1/src/screen/frame_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider()),
        ChangeNotifierProvider(create: (_) => FestivalProvider())
      ],
      child: App()
    )
  );
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Widget cupertino = CupertinoApp(
        home: DesktopScreen(screen: const FrameScreen()),
        theme: const CupertinoThemeData(
            textTheme: CupertinoTextThemeData(
                textStyle: TextStyle(color: Colors.black)
            )
        )
    );

    return ScreenTypeLayout.builder(
      mobile: (context) => cupertino,
      tablet: (context) => DesktopScreen(screen: cupertino),
      desktop: (context) => DesktopScreen(screen: cupertino)
    );
  }
}
