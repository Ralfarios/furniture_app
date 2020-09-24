import 'package:flutter/material.dart';

import '../../../view/pageBookmarkView.dart';
import '../../../view/pageLandingView.dart';
import '../../../view/pageProductView.dart';

const String LandingRoute = '/landingRoute';
const String ProductRoute = '/productRoute';
const String BookmarkRoute = '/bookmarkRoute';

class RouterApp {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case LandingRoute:
        return MaterialPageRoute(builder: (context) => PageLandingView());
      case ProductRoute:
        return MaterialPageRoute(builder: (context) => PageProductView());
      case BookmarkRoute:
        return MaterialPageRoute(builder: (context) => PageBookmarkView());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("404 Page not found"),
            ),
          ),
        );
    }
  }
}
