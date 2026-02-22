import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is appbar"),
          backgroundColor: Colors.amber,
        ),
        body: Padding(
          child:Text('This is the body'),
          padding: EdgeInsetsGeometry.only(left: 300,top: 780),
        ),

      ),
    );
  }
}
