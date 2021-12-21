import 'dart:core';

import 'package:flutterjobtask/model/attrs_json.dart';
import 'package:flutterjobtask/model/child_json.dart';

class InputAttributesJson {
  final AttrsJson attrs;

  final List<Child> children;

  InputAttributesJson(this.attrs, this.children);

  factory InputAttributesJson.fromJson(Map<String, dynamic> json) {
    final childrenData = json['children'] as List<dynamic>?;
    final children = childrenData != null
        // map each review to a Review object
        ? childrenData
            .map((childrenData) => Child.fromJson(childrenData))
            // map() returns an Iterable so we convert it to a List
            .toList()
        // use an empty list as fallback value
        : <Child>[];
    return InputAttributesJson(AttrsJson.fromJson(json['attrs']), children);
  }
}
