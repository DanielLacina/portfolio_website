import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppState with ChangeNotifier {
  String selectedItem = "Home";
  void setSelectedItem(String label) {
    selectedItem = label;
    notifyListeners();
  }
}
