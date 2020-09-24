import 'package:flutter/material.dart';
import 'package:furniture_app/model/list/arrival.dart';

class SliderIndicatorBullet extends ChangeNotifier {
  int length = arrivalListCategory.length.toInt();

  void changePage(int page) {
    for (int i = 0; i < length; i++) {
      page = length;
    }
    return null;
  }

  int get sliderIndicatorLength => length;
}
