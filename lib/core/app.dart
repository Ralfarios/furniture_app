import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'const/style/theme.dart';
import '../view/pageLandingView.dart';

class ChairShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chair Shop',
      theme: tLightFurniture,
      home: PageLandingView(),
    );
  }
}
