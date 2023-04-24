import 'package:flutter/material.dart';

class UserImageButton extends StatelessWidget {
  const UserImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return GestureDetector(
      child: CircleAvatar(
        backgroundColor: colorScheme.primary,
        // Cor da letra
        foregroundColor: colorScheme.onPrimary,
        child: const Text('A'),
      ),
    );
  }
}
