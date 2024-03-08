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
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/UAENA_250.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: const <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/kim_tae_ri.jpg'),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/images/kim_tae_ri.jpg'),
                //   backgroundColor: Colors.white,
                // ),
              ],
              accountName: const Text('Minam'),
              accountEmail: const Text('minam@niceday.io'),
              onDetailsPressed:(){
                print("onPressed userAccountsDrawerHeader arrow.");
              },
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(0.2)
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.grey,),
              title: const Text('Home'),
              onTap: () {
                print('OnTapped Home');
              },
              trailing: const Icon(Icons.add, color: Colors.grey,),
            ),
            ListTile(
              leading: const Icon(Icons.question_answer, color: Colors.grey,),
              title: const Text('Question_Answer'),
              onTap: () {
                print('OnTapped Question_Answer');
              },
              trailing: const Icon(Icons.add, color: Colors.grey,),
            ),
            ListTile(
              leading: const Icon(Icons.access_alarm, color: Colors.grey,),
              title: const Text('Set Alarm'),
              onTap: () {
                print('OnTapped Set Alarm');
              },
              trailing: const Icon(Icons.add, color: Colors.grey,),
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.grey,),
              title: const Text('Settings'),
              onTap: () {
                print('OnTapped Home');
              },
            ),
          ],
        ),
      ),
    );
  }
}
