import 'package:flutter/material.dart';

class CustomCarouselSliderState extends ChangeNotifier{
    int _sliderIndex = 0;

    int get sliderIndex => _sliderIndex;

    void setSliderIndex(int value) {
      _sliderIndex = value;
      // print(_sliderIndex);
      notifyListeners();
    }
}