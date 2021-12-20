import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'interactionScreen.dart';

void main() {
  runApp(const FlutterJobTask());
}

class FlutterJobTask extends StatelessWidget {
  const FlutterJobTask({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    _loadJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Container(
            color: Colors.grey,
            child: InteractionScreen(),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        tooltip: 'Next',
        child: const Icon(Icons.arrow_forward),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

void _loadJson() async {
  String data = await rootBundle.loadString('/flutter_task.json');
  final jsonResult = json.decode(data);
  print('Json Input data is: $jsonResult');
}
