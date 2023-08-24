import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simpanda_idea1/router.dart';
import 'package:simpanda_idea1/src/provider/festival_provider.dart';
import 'package:simpanda_idea1/src/provider/ui_provider.dart';
import 'package:simpanda_idea1/src/theme/theme.dart';

void main() {
  FRouter.setupRouter();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider()),
        ChangeNotifierProvider(create: (_) => FestivalProvider())
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
      initialRoute: Routes.home,
      onGenerateRoute: FRouter.router.generator,
      theme: const CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(color: ColorTheme.blackPoint)
        )
      ),
    );
  }
}