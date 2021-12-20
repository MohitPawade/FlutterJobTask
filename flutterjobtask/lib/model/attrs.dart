import 'package:flutterjobtask/model/size.dart';

import 'backgroundcolor.dart';
import 'lottiebackground.dart';

class Attrs {
  late Size _size;

  late BackgroundColor backgroundColor;

  late LottieBackground lottieBackground;

  Size get getSize {
    return _size;
  }

  void setSize(Size size) {
    _size = size;
  }

  BackgroundColor get getBackgroundColor {
    return backgroundColor;
  }

  void setBackgroundColor(BackgroundColor backgroundColor) {
    this.backgroundColor = backgroundColor;
  }

  LottieBackground get getLottieBackground {
    return lottieBackground;
  }

  void setLottieBackground(LottieBackground lottieBackground) {
    this.lottieBackground = lottieBackground;
  }
}
