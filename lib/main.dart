import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int n =1 ;
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          title: Text(
            "Ask Me Anything",
          ),
        ),
        body: Container(
          color: Colors.blue,
          child: TextButton(
            onPressed: (){
              setState(() {
                n=Random().nextInt(4)+1 ;
              });

            },
            child: Center(child: Image.asset('images/ball$n.png')),
          ),
        ),
      ),
    );
  }
}
