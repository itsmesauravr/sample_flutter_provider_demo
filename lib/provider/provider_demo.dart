import 'package:flutter/material.dart';

class ProviderDemo extends ChangeNotifier {
  String name = "Saurav R";

  void changeValue(String value) {
    name = value;
    notifyListeners();
  }

  Widget creatWidget() {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
