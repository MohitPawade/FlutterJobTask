import 'breakpoint.dart';

class BackgroundColor {
  String type = "";
  List<BreakPoint> breakPoints = [];

  String getType() {
    return type;
  }

  void setType(String type) {
    this.type = type;
  }

  List<BreakPoint> getBreakPoints() {
    return breakPoints;
  }

  void setBreakPoints(List<BreakPoint> breakPoints) {
    this.breakPoints = breakPoints;
  }
}
