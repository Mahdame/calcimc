import 'package:calcimc/pages/calc_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const Home(),
    theme: ThemeData.dark().copyWith(
      primaryColor: const Color(0xff0a0e21),
      scaffoldBackgroundColor: const Color(0xff0a0e21),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff0a0e21),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
