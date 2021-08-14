import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var number1 = 1;
  var number2 = 1;
  void changeDice() {
     setState(() {
        number1 = Random().nextInt(6) + 1;
        number2 = Random().nextInt(6) + 1;
     });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[500],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('icon 1 pressed');
            },
          ),
          title: Text('DICEE'),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: TextButton(
                onPressed: () {
                  changeDice();
                  print('icon is pressed');
                },
                child: Image.asset('images/dice$number1.png'),
              )),
              Expanded(
                  child: TextButton(
                onPressed: () {
                  changeDice();
                  print('icon 2 is pressed');
                },
                child: Image.asset('images/dice$number2.png'),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
