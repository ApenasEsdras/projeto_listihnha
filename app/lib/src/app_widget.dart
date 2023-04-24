import 'package:flutter/material.dart';
import 'package:listinha/src/shared/themes/themes.dart';

import 'configuration/configuration_page.dart';
import 'home/edit_task_board_page.dart';
import 'home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // remove o a img de debugger
      debugShowCheckedModeBanner: false,
      // autera o tema do app
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: dartTheme,

      routes: {
        '/': (context) => const HomePage(),
        '/edit': (context) => const EditiTaskBoardPage(),
        '/config': (context) => const ConfigurationPage(),
      },
    );
  }
}
