import 'package:flutter/material.dart';

class RouteProvider extends ChangeNotifier {

  int currentIndexSelectedPage = 0;

  setCurrentIndexPage(int index) {
    currentIndexSelectedPage = index;
    notifyListeners();
  }

}