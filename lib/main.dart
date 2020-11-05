import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solution/style.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Anything'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person),
            )
          ],
          backgroundColor: primaryColor,
        ),
        body: Solution(),
        backgroundColor: secondaryColor,
      ),
    );
  }
}

class Solution extends StatefulWidget {
  @override
  _SolutionState createState() => _SolutionState();
}

class _SolutionState extends State<Solution> {
  int init = 5;

  @override
  Widget build(BuildContext context) {
    // int init = 5;

    void generate() {
      setState(() {
        init = Random().nextInt(5) + 1;
      });
    }

    return Center(
      child: SizedBox(
        width: 250,
        // height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              child: Image.asset('images/ball$init.png'),
              onPressed: () {
                generate();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Cilck the magic ball',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
