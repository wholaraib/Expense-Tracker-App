import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var kColorsScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorsScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorsScheme.onPrimary,
          foregroundColor: kColorsScheme.onPrimaryContainer,
        ),
        cardTheme: CardThemeData().copyWith(
          color: kColorsScheme.tertiaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
          backgroundColor: kColorsScheme.primaryContainer
        )),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(fontWeight: FontWeight.bold, color: kColorsScheme.onSecondaryContainer)
        )
      ),
      home: const Expenses(),
    ),
  );
}
