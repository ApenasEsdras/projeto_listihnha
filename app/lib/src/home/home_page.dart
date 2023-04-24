import 'package:flutter/material.dart';
import 'package:listinha/src/home/widgets/custom_drawer.dart';

import '../shared/widgets/user_image_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // parte do cabecalho

      // sessao opcoes
      drawer: const CustomDrawer(),
      // sessao geral Cabecalho
      appBar: AppBar(
        title: const Text('LISTINHA'),
        // cessao do usuario
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: UserImageButton(),
          ),
        ],
      ),

      // sessao Body (Geral do corpo)
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: SegmentedButton<int>(
                segments: const [
                  ButtonSegment(
                    value: 0,
                    label: Text('todos'),
                  ),
                  ButtonSegment(
                    value: 1,
                    label: Text('Pendentes'),
                  ),
                  ButtonSegment(
                    value: 2,
                    label: Text('Concluídas'),
                  ),
                  ButtonSegment(
                    value: 3,
                    label: Text('Desativadas'),
                  ),
                ],
                selected: const {1},
                // deixa os campos selecionaveis
                onSelectionChanged: (values) {},
              ),
            )
          ],
        ),
      ),
      // consrtuindo o botáo de add Lista
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.edit),
        // procurara formas de se colocar um button sem text
        label: const Text('Nova Lista'),
        onPressed: () {
          Navigator.of(context).pushNamed('/edit');
        },
      ),
    );
  }
}
