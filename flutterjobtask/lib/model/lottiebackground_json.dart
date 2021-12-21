class LottieBackgroundJson {
  String url = "";
  String asset = "";
  LottieBackgroundJson(this.url, this.asset);
/*
  String getUrl() {
    return url;
  }

  void setUrl(String url) {
    this.url = url;
  }

  String getAsset() {
    return asset;
  }

  void setAsset(String asset) {
    this.asset = asset;
  }*/

  factory LottieBackgroundJson.fromJson(Map<String, dynamic> json) {
    return LottieBackgroundJson(json['url'] as String, json['asset'] as String);
  }
}
