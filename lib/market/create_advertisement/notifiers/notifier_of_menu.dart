import 'package:flutter/material.dart';

class NotifierOfMenu extends ChangeNotifier {
  bool isMenuOpen = false;

  void openMenu() {
    isMenuOpen = true;
    notifyListeners();
  }

  void closeMenu() {
    isMenuOpen = false;
    notifyListeners();
  }
}
