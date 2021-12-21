class SizeJson {
  int width = 0;
  int height = 0;
  SizeJson(this.width, this.height);

  factory SizeJson.fromJson(dynamic json) {
    return SizeJson(json['width'] as int, json['height'] as int);
  }
}
