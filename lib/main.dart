import 'package:flutter/material.dart';

// import 'memberShipInfo.dart';
import 'package:my_first_flutter/ menu/menu.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First Flutter App by coffee farm.',
      // home: MyHomePage(),
      home: Menu(),
    );
  }
}
