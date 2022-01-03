import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterjobtask/model/breakpoint_json.dart';
import 'package:flutterjobtask/model/child_json.dart';
import 'package:flutterjobtask/model/inputattributes_json.dart';
import 'package:lottie/lottie.dart';

class InteractionScreen extends StatefulWidget {
  InputAttributesJson _inputAttributes;

  InteractionScreen(this._inputAttributes);

  @override
  State<InteractionScreen> createState() => _InteractionScreenState();
}

class _InteractionScreenState extends State<InteractionScreen> {
  late int interactionNumbers;
  late double width;
  late double height;

  @override
  void initState() {
    super.initState();
    width = widget._inputAttributes.attrs.size.width as double;
    height = widget._inputAttributes.attrs.size.height as double;
  }

  List<BreakPointJson> breakpoint = [];
  List<Color> colorList = [];
  List<double> stopList = [];

  @override
  Widget build(BuildContext context) {
    print("InteractionScreen Attributes : ${widget._inputAttributes}");
    /*breakpoint = widget._inputAttributes.attrs.backgroundColor.breakPoints;

    for (int i = 0; i < breakpoint.length; i++) {
      colorList.add(Color(int.parse(breakpoint[i].color)));
    }

    for (int i = 0; i < breakpoint.length; i++) {
      stopList.add(breakpoint[i].point);
    }*/

    return Container(
      width: width,
      height: height,
      color: Colors.blueGrey,
      /*decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(-1.0, 0.0),
              end: Alignment(-1.0, 0.0),
              colors: colorList,
              stops: stopList)),*/
      child: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Lottie.network(widget._inputAttributes.attrs.lottieBackground.asset,
                width: widget._inputAttributes.attrs.size.width as double,
                height: widget._inputAttributes.attrs.size.height as double,
                repeat: true),
          ],
        ),
        Positioned(
          child: getText(context),
          left: widget._inputAttributes.children[0].x as double,
          top: widget._inputAttributes.children[0].y as double,
        ),
        Positioned(
          child: getImage(1),
          left: widget._inputAttributes.children[1].x as double,
          top: widget._inputAttributes.children[1].y as double,
        ),
        Positioned(
          child: getImage(2),
          left: widget._inputAttributes.children[2].x as double,
          top: widget._inputAttributes.children[2].y as double,
        ),
        Positioned(
          child: getImage(3),
          left: widget._inputAttributes.children[3].x as double,
          top: widget._inputAttributes.children[3].y as double,
        ),
      ]),
    );
  }

  //Load Text
  Widget getText(BuildContext context) {
    Child child = widget._inputAttributes.children[0];
    print('Text is ${child.text}');
    return Text(
      child.text,
      style: TextStyle(
          color: Colors.white, //Color.fromARGB(1, 255, 255, 255),
          fontSize: child.fontSize as double,
          fontWeight: child.bold ? FontWeight.bold : FontWeight.normal),
    );
  }

  /*Load Images
  * @param: position: Represents index of child*/
  Widget getImage(int position) {
    Child child = widget._inputAttributes.children[position];
    return Image(
        image: NetworkImage(child.src),
        width: child.width as double,
        height: child.height as double);
  }
}
