// ignore_for_file: non_constant_identifier_names, unnecessary_new, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:counter_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
