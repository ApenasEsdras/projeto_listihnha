import 'package:flutter/material.dart';

class EditiTaskBoardPage extends StatefulWidget {
  const EditiTaskBoardPage({super.key});

  @override
  State<EditiTaskBoardPage> createState() => _EditiTaskBoardPageState();
}

class _EditiTaskBoardPageState extends State<EditiTaskBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listinha'),
      ),
    );
  }
}
