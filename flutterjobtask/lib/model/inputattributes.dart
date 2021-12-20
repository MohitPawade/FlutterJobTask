import 'dart:core';
import 'attrs.dart';
import 'child.dart';

class InputAttributes {
  late Attrs _attrs;

  List<Child> _children = [];

  Attrs get getAttrs {
    return _attrs;
  }

  void setAttrs(Attrs attrs) {
    _attrs = attrs;
  }

  List<Child> get getChildren {
    return _children;
  }

  void setChildren(List<Child> children) {
    _children = children;
  }
}
