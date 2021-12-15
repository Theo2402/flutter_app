import 'package:flutter/material.dart';

class RemoteProvider with ChangeNotifier {
  int groupValue = 1;

  void updateGroupValue(int value) {
    groupValue = 1;
    notifyListeners();
  }
}
