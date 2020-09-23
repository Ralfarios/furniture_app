import 'package:flutter/material.dart';

import '../../core/const/style/color.dart';

class BackgroundApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kWhite,
          ),
        ),
        Container(
          height: double.infinity,
          width: MediaQuery.of(context).size.width / 4,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [kGradTop, kGradBot],
            ),
          ),
        ),
      ],
    );
  }
}
