import 'package:chitragupta_mobile/pages/add_new_expense_page.dart';
import 'package:chitragupta_mobile/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  final darkTheme = ThemeData(
    useMaterial3: true,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: Colors.black,
      ),
    ),
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AddNewExpensePage(),
    theme: darkTheme,
  ));
}
