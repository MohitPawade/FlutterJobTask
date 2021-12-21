import 'package:flutterjobtask/model/backgroundcolor_json.dart';
import 'package:flutterjobtask/model/lottiebackground_json.dart';
import 'package:flutterjobtask/model/size_json.dart';

class AttrsJson {
  final SizeJson size;

  final BackgroundColorJson backgroundColor;

  final LottieBackgroundJson lottieBackground;

  AttrsJson(this.size, this.backgroundColor, this.lottieBackground);

  factory AttrsJson.fromJson(Map<String, dynamic> json) {
    return AttrsJson(
        SizeJson.fromJson(json['size']),
        BackgroundColorJson.fromJson(json['backgroundColor']),
        LottieBackgroundJson.fromJson(json['lottieBackground']));
  }
}
