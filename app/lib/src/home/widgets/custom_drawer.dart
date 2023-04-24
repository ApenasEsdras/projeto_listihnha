import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      // chamada da rota q traz valor do arquivo configuration
      onDestinationSelected: (index) {
        // se config foi selecionado
        if (index == 1) {
          // fecha popup
          Navigator.of(context).pop();
          // leva para pagina de configuração
          Navigator.of(context).pushNamed('/config');
        }
      },
      children: [
        Padding(
          padding:
              // forma simplificada
              const EdgeInsets.fromLTRB(16, 28, 16, 16),
          child: Text(
            'Opções',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        NavigationDrawerDestination(
          icon: const Icon(Icons.sync),
          label: Row(
            children: [
              const Text('Sencronizar'),
              const SizedBox(width: 20),
              Text(
                ' 22/04/20223 as 16:09',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.settings),
          label: Text('Configurações'),
        )
      ],
    );
  }
}
