import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:listinha/src/shared/themes/themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Modular.setInitialRoute('/home/');

    return MaterialApp.router(
      title: 'Flutter Demo',
      // remove o a img de debugger
      debugShowCheckedModeBanner: false,
      // autera o tema do app
      themeMode: ThemeMode.light,
      theme: lightTeme,
      darkTheme: dartTeme,
      // implemetando rotas
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}
