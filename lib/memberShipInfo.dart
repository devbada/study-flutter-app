
import 'package:flutter/material.dart';

class MemberShipInfo extends StatelessWidget {
  const MemberShipInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      appBar: AppBar(
        title: const Text('CLUB IU', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      // body: const Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //        Text('Hello1')
      //       ,Text('Hello2')
      //       ,Text('Hello3')
      //     ],
      //   ),
      // ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child:
              Text('Membership Information',
                style:  TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/UAENA_250.png'),
                backgroundColor: Colors.white,
                radius: 60,
              ),
            ),
            Divider(
              height: 40.0,
              color: Colors.white70,
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text('Name',
              style: TextStyle(color: Colors.white70,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('커피농장',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text('Membership Number',
              style: TextStyle(
                  color: Colors.white70,
                  letterSpacing: 2.0,
              ),
            ),
            Text('M2348*******',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 39.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 5.0,
                ),
                Text('using lightsaber',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 5.0,
                ),
                Text('face here tattoo',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 5.0,
                ),
                Text('fire flames',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
