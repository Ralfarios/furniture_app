import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_app/core/provider.dart';
import 'package:provider/provider.dart';

import 'const/style/theme.dart';
import '../view/pageLandingView.dart';
import '../core/const/path/router.dart';

class ChairShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MultiProvider(
      providers: multiProviders,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chair Shop',
        theme: tLightFurniture,
        home: PageLandingView(),
        onGenerateRoute: RouterApp.generateRoute,
        initialRoute: LandingRoute,
      ),
    );
  }
}
