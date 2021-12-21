class Child {
  String type = " ";
  String text = "";
  int x = 0;
  int y = 0;
  String color = "";
  int fontSize = 0;
  bool bold = false;
  bool italic = false;
  String src = "";
  int height = 0;
  int width = 0;

  Child(this.type, this.text, this.x, this.y, this.color, this.fontSize,
      this.bold, this.italic, this.src, this.height, this.width);

  /*String getType() {
    return type;
  }

  void setType(String type) {
    this.type = type;
  }

  String getText() {
    return text;
  }

  void setText(String text) {
    this.text = text;
  }

  int getX() {
    return x;
  }

  void setX(int x) {
    this.x = x;
  }

  int getY() {
    return y;
  }

  void setY(int y) {
    this.y = y;
  }

  String getColor() {
    return color;
  }

  void setColor(String color) {
    this.color = color;
  }

  int getFontSize() {
    return fontSize;
  }

  void setFontSize(int fontSize) {
    this.fontSize = fontSize;
  }

  bool getBold() {
    return bold;
  }

  void setBold(bool bold) {
    this.bold = bold;
  }

  bool getItalic() {
    return italic;
  }

  void setItalic(bool italic) {
    this.italic = italic;
  }

  String getSrc() {
    return src;
  }

  void setSrc(String src) {
    this.src = src;
  }

  int getHeight() {
    return height;
  }

  void setHeight(int height) {
    this.height = height;
  }

  int getWidth() {
    return width;
  }

  void setWidth(int width) {
    this.width = width;
  }
*/
  factory Child.fromJson(Map<String, dynamic> json) {
    return Child(
        (json['type'] as String?) ?? '',
        (json['text'] as String?) ?? '',
        (json['x'] as int?) ?? 0,
        (json['y'] as int?) ?? 0,
        (json['color'] as String?) ?? '',
        (json['fontSize'] as int?) ?? 0,
        (json['bold'] as bool?) ?? false,
        (json['italic'] as bool?) ?? false,
        (json['src'] as String?) ?? '',
        (json['height'] as int?) ?? 0,
        (json['width'] as int?) ?? 0);
  }
}
