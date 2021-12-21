import 'package:flutterjobtask/model/breakpoint_json.dart';

class BackgroundColorJson {
  String type = "";
  List<BreakPointJson> breakPoints = [];

  BackgroundColorJson(this.type, this.breakPoints);

  factory BackgroundColorJson.fromJson(Map<String, dynamic> json) {
    final breakpointData = json['breakPoints'] as List<dynamic>?;
    final breakPoint = breakpointData != null
        ? breakpointData
            .map((breakpointData) => BreakPointJson.fromJson(breakpointData))
            // map() returns an Iterable so we convert it to a List
            .toList()
        // use an empty list as fallback value
        : <BreakPointJson>[];
    return BackgroundColorJson(json['type'] as String, breakPoint);
  }
}
