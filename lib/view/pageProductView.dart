import 'package:flutter/material.dart';
import 'package:furniture_app/model/shared/sharedModel.dart';

import '../core/const/path/icon.dart' as icon;

class PageProductView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        BackgroundApp(),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            brightness: Brightness.light,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Image.asset(
                icon.iaBack,
                height: 20,
                width: 20,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
      ],
    );
  }
}
