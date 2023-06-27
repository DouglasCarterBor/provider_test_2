import 'package:flutter/foundation.dart';

class UserData extends ChangeNotifier {
  String name;
  int age;

  UserData({this.name = '', this.age = 0});

  void updateData(String newName, int newAge) {
    name = newName;
    age = newAge;
    notifyListeners();
  }
}
