import 'package:flutter/material.dart';

// dsi de qu eparte esta vindo essas classes privadas
part 'color_schemes.g.dart';
// import 'color_schemes.g.dart';

// chamamos o elemenmto com o get para trazer mais performance a aplicacao.
ThemeData get lightTheme => ThemeData(
      useMaterial3: true,
      colorScheme: _lightColorScheme,
      // coloca uma cor de funco (ou autera a cor de base n asessao titulo)
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: _lightColorScheme.primaryContainer,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        // autrera a cor primaria do botao
        backgroundColor: _lightColorScheme.primary,
        // autera a cor primaria do icone
        foregroundColor: _lightColorScheme.onPrimary,
      ),
      segmentedButtonTheme: _segmentedButtonTheme,
    );

// ================== //

ThemeData get dartTheme => ThemeData(
      useMaterial3: true,
      colorScheme: _darkColorScheme,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: _darkColorScheme.primaryContainer,
      ),
      segmentedButtonTheme: _segmentedButtonTheme,
    );

SegmentedButtonThemeData get _segmentedButtonTheme => SegmentedButtonThemeData(
      style: ButtonStyle(
        // inicia algo (nesse caso um tipo)
        textStyle: MaterialStateProperty.resolveWith<TextStyle?>((states) {
          if (states.contains(MaterialState.selected)) {
            return const TextStyle(
              fontSize: 10,
            );
          }
          // gerenciamento de estados
          return const TextStyle(
            fontSize: 12,
          );
        }),
      ),
    );
