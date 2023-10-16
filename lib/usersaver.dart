import 'package:flutter/foundation.dart';


class UserProvider with ChangeNotifier {
  late String _userId;

  String get userId => _userId;

  void setUserId(String userId) {
    _userId = userId;
    notifyListeners();
  }
}
