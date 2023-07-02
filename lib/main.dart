import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorSchema = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 37, 102, 241),
);

var kDarkColorSchema = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 29, 80),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorSchema,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorSchema.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorSchema.primaryContainer,
            foregroundColor: kDarkColorSchema.onPrimaryContainer,
          ),
        ),
      ),

      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorSchema,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorSchema.onPrimaryContainer,
          foregroundColor: kColorSchema.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorSchema.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorSchema.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.w500,
            color: kColorSchema.onSecondaryContainer,
            fontSize: 16,
          ),
        ),
      ),
      home: const Expenses(),
    ),
  );
}
