import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterjobtask/listprovider.dart';
import 'package:flutterjobtask/model/inputattributes_json.dart';
import 'package:flutterjobtask/scaffoldHolder.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const FlutterJobTask());
}

class FlutterJobTask extends StatelessWidget {
  const FlutterJobTask({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<InteractionListProvider>(
      create: (context) => InteractionListProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
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
  initState() {
    super.initState();
    _loadJson(context);
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldHolder();
  }
}

void _loadJson(BuildContext context) async {
  String data = await rootBundle.loadString('assets/flutter_task.json');
  final jsonResult = json.decode(data) as List;
  print('Json Input data is: $jsonResult');

  List<InputAttributesJson> _inputAttributesList =
      jsonResult.map((e) => InputAttributesJson.fromJson(e)).toList();
  Provider.of<InteractionListProvider>(context, listen: false)
      .setlist(_inputAttributesList);
}
