import 'package:flutter/cupertino.dart';

import 'model/inputattributes_json.dart';

class InteractionListProvider extends ChangeNotifier {
  List<InputAttributesJson> _list = [];

  List<InputAttributesJson> getlist() {
    print('GetList size = ${this._list.length}');
    return this._list;
  }

  void setlist(List<InputAttributesJson> value) {
    this._list = value;
    print("SetList size ====> ${this._list.length}");
    notifyListeners();
  }
}
