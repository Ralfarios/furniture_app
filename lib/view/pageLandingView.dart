import 'package:flutter/material.dart';

import '../model/pageLandingModel.dart';
import '../model/shared/sharedModel.dart';

class PageLandingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        BackgroundApp(),
        Scaffold(
          backgroundColor: Colors.transparent,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: LandingFAB(),
          appBar: AppBar(
            leading: DrawerIcon(),
            actions: <Widget>[
              SearchIcon(),
              UserIcon(),
            ],
            brightness: Brightness.light,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          drawer: LandingDrawer(),
          body: ListView(
            physics: BouncingScrollPhysics(),
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0, bottom: 16.0),
                child: ArrivalCardSwipe(),
              ),
              CardCategoryLabel(string: "BEST SELLING"),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                child: BestSellingCardSwipe(),
              ),
              CardCategoryLabel(string: "TRENDING"),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                child: TrendingCardSwipe(),
              ),
            ],
          ),
          bottomNavigationBar: LandingBotNavBar(),
        ),
      ],
    );
  }
}
