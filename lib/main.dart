import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        children: <Widget>[
          Container(
            width: 300,
            height: 300,
            margin: const EdgeInsets.fromLTRB(10, 80, 10, 40),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueAccent,
            ),
          ),
          Container(
            width: 300,
            height: 300,
            margin: const EdgeInsets.fromLTRB(10, 80, 10, 40),
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.greenAccent,
            ),
          )
        ],
      ),
      ),
    );
  }
}
