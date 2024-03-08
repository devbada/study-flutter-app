import 'package:flutter/material.dart';

import 'package:my_first_flutter/memberShipInfo.dart';
import 'package:my_first_flutter/ menu/menu.dart';
import 'package:my_first_flutter/snack/snack_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First Flutter App by coffee farm.',
      // home: MemberShipInfo(),
      // home: Menu(),
      // home: Main(),
      home: MySnackBar(),
    );
  }
}

// class Main extends StatelessWidget {
//   const Main({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bo
//       ],
//     );
//   }
// }
