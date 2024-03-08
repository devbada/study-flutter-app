import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hello world'),
      ),
      body: const Center(
        child: Column(
          children: <Widget>[
            Text('Hello')
            ,Text('Hello W')
            ,Text('Hello World')
          ],
        ),
      ),
    );
  }
}
