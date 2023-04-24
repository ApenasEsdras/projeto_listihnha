// responsavel por configurar e dar estilo as rotas
import 'package:flutter_modular/flutter_modular.dart';

import 'configuration/configuration_page.dart';
import 'home/home_module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ChildRoute(
          '/config',
          child: (context, args) => const ConfigurationPage(),
        ),
      ];
}