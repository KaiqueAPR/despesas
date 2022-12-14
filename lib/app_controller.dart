import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  static AppController instace = AppController();

  bool isDarkTheme = false;
  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}