import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'My First Flutter App by coffee farm.',
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: const MyHomePage(),
    );
  }
}
