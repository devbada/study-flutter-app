import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to the second page'),
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondPage(),),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.thumb_up),
        onPressed: (){
          ScaffoldMessenger.of(context)
              .showSnackBar( SnackBar(
                                    content: Text('Like a new Snack bar!'),
                                    duration: Duration(seconds: 5),
                                    action: SnackBarAction(
                                              label: 'Undo',
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => ThirdPageState(),),
                                                );
                                              }
                                    ),
          ));
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('second page'),
      ),
      body: const Center(
        child: Text('Liked!'),
      ),
    );
  }
}

class ThirdPageState extends StatefulWidget {

  @override
  ThirdPage createState() => ThirdPage();
}

class ThirdPage extends State<ThirdPageState> {

  bool isSnackBarShown = false;

  void showSnackBar(context, String value) {
    if (!isSnackBarShown) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(value),
        ),
      ).closed.then((reason) => isSnackBarShown = false);
      // Set the flag to true, so the SnackBar won't be shown again.
      setState(() {
        isSnackBarShown = true;
      });
    }
  }

  void onButtonPressed(var context, String value) {
    showSnackBar(context, value);
  }
  
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Undo Like Confirm'),
        ),
        body: Builder(
          builder: (context) {
            return Center(
              child: Column(
                children: [
                  const Text('Are you sure undo?',
                    style: TextStyle(fontSize: 20.0, color: Colors.redAccent),
                  ),
                  ElevatedButton(
                      onPressed: (){
                        onButtonPressed(context, 'UNDO!!');
                      },
                      child: Text("취소하기"))
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
