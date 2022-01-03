import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutterjobtask/interactionScreen.dart';
import 'package:flutterjobtask/listprovider.dart';
import 'package:flutterjobtask/model/inputattributes_json.dart';
import 'package:provider/provider.dart';

class ScaffoldHolder extends StatefulWidget {
  @override
  State<ScaffoldHolder> createState() => _ScaffoldHolderState();
}

class _ScaffoldHolderState extends State<ScaffoldHolder> {
  late List<InputAttributesJson> _inputAttributesList;
  late int position;
  @override
  void initState() {
    super.initState();
    position = 0;
  }

  @override
  Widget build(BuildContext context) {
    _inputAttributesList =
        Provider.of<InteractionListProvider>(context, listen: true).getlist();
    print('List size = ${_inputAttributesList.length}');
    return Scaffold(
      backgroundColor: Colors.grey,
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Container(
              color: Colors.grey,
              child: _inputAttributesList.isNotEmpty
                  ? InteractionScreen(_inputAttributesList[position])
                  : Container(),
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
            if (position >= _inputAttributesList.length - 1) {
              position = 0;
            } else {
              position++;
            }
            print('Position = $position');
            setState(() {});
          },
          tooltip: 'Next',
          child: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
