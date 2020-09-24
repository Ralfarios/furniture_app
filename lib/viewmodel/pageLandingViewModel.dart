import 'package:flutter/material.dart';

import '../core/const/path/router.dart';
import '../model/list/arrival.dart';

class PageLandingViewModel extends ChangeNotifier {
  int length = arrivalListCategory.length.toInt();

  void changePage(int page) {
    for (int i = 0; i < length; i++) {
      page = length;
    }
    return null;
  }

  int get sliderIndicatorLength => length;

  toProductPage(context) => Navigator.pushNamed(context, ProductRoute);

  toBookmarkPage(context) => Navigator.pushNamed(context, BookmarkRoute);
}
