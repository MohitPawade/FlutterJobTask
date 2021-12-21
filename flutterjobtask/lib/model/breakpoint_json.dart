class BreakPointJson {
  double point = 0;
  String color = "";
  BreakPointJson(this.point, this.color);

  factory BreakPointJson.fromJson(Map<String, dynamic> json) {
    return BreakPointJson(json['point'] as double, json['color'] as String);
  }
}
