import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menu',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              print('Pressed Menu');
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                print('Pressed Shopping Cart');
              },
            ),IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {
                print('Pressed search');
              },
            ),
          ],
          backgroundColor: Colors.redAccent,
        ),
    );
  }
}
