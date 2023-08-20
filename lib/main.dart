import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simpanda_idea1/src/provider/ui_provider.dart';
import 'package:simpanda_idea1/src/screen/error_screen.dart';
import 'package:simpanda_idea1/src/screen/frame_screen.dart';
import 'package:simpanda_idea1/src/screen/festival_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider())
      ],
      child: const App()
    )
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenTypeLayout.builder(
          mobile: (context) => const FrameScreen(),
          tablet: (context) => const ErrorScreen(),
          desktop: (context) => const ErrorScreen()
        ),
        '/login': (context) => const FestivalScreen(),
      },
      theme: const CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(color: Colors.black)
        )
      )
    );
  }
}
