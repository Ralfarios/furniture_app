//import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../core/const/path/icon.dart' as icon;
import '../core/const/style/color.dart';
import '../model/list/arrival.dart';
import '../model/list/best.dart';
import '../model/list/trending.dart';
import '../viewmodel/pageLandingViewModel.dart';

class DrawerIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: IconButton(
            icon: Image.asset(
              icon.iaDrawer,
              height: 20,
              width: 20,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        );
      },
    );
  }
}

class SearchIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(
        icon.iaSearch,
        height: 20,
        width: 20,
      ),
      onPressed: () {},
    );
  }
}

class UserIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: IconButton(
        icon: Icon(
          Icons.account_circle_rounded,
          color: kBlack,
        ),
        onPressed: () {},
      ),
    );
  }
}

class LandingDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Text("This is\napp Drawer",
            style: Theme.of(context).textTheme.headline2),
      ),
    );
  }
}

class LandingFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageLandingViewModel>(builder: (context, provider, child) {
      return FloatingActionButton(
          backgroundColor: kMainBlue,
          child: Image.asset(icon.ibBookmark),
          onPressed: () => provider.toBookmarkPage(context));
    });
  }
}

class LandingBotNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          activeIcon: Image.asset(icon.ibHomeSelect),
          icon: Image.asset(icon.ibHome),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(icon.ibBag),
          label: "Cart",
        ),
      ],
      backgroundColor: Color(0xFFF3F8FF),
      selectedFontSize: 0,
      unselectedFontSize: 0,
    );
  }
}

class CardCategoryLabel extends StatelessWidget {
  final String string;

  CardCategoryLabel({this.string});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Text(
        string,
        style: Theme.of(context)
            .textTheme
            .headline2
            .copyWith(letterSpacing: 4, fontSize: 18),
      ),
    );
  }
}

// Card for New Arrival

class ArrivalCardSwipe extends StatefulWidget {
  @override
  _ArrivalCardSwipeState createState() => _ArrivalCardSwipeState();
}

class _ArrivalCardSwipeState extends State<ArrivalCardSwipe> {
  final controller = PageController(viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Consumer<PageLandingViewModel>(
        builder: (context, provider, child) {
          return Stack(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 252,
                child: PageView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: arrivalListCategory.length,
                  controller: controller,
                  onPageChanged: (int page) => provider.sliderIndicatorLength,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: ArrivalCardBuilder(
                      arrivalList: arrivalListCategory[index],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                child: Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: arrivalListCategory.length,
                    effect: WormEffect(
                      activeDotColor: kMainBlue,
                      dotColor: kBlack50,
                      dotHeight: 8,
                      dotWidth: 8,
                      spacing: 4,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
    });
  }
}

class ArrivalCardBuilder extends StatelessWidget {
  final ArrivalListCategory arrivalList;

  const ArrivalCardBuilder({Key key, this.arrivalList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<PageLandingViewModel>(builder: (context, provider, child) {
      return Stack(
        children: [
          ClipRect(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
              width: 386,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: kShadowCard,
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: Offset(0, 0),
                  ),
                ],
                color: kWhite,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      arrivalList.image,
                      height: 150,
                    ),
                  ),
                  Positioned.fill(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16.0),
                        onTap: () => provider.toProductPage(context),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 42.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "NEW ARRIVAL",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 10, letterSpacing: 4),
                    ),
                    SizedBox(height: 10),
                    Text(
                      arrivalList.name,
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          .copyWith(color: kMainBlue, fontSize: 24),
                    ),
                    Text(
                      arrivalList.type,
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          .copyWith(fontSize: 24),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Aliquip ad magna voluptate\nconsequat adipisicing elit.",
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          .copyWith(color: kBlack50, fontSize: 8),
                    ),
                    SizedBox(height: 15),
                    Column(
                      children: [
                        Text(
                          "SHOP NOW",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 10, letterSpacing: 4),
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: 50,
                          height: 2,
                          decoration: BoxDecoration(color: kMainBlue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}

// Card for Best Selling

class BestSellingCardSwipe extends StatefulWidget {
  @override
  _BestSellingCardSwipeState createState() => _BestSellingCardSwipeState();
}

class _BestSellingCardSwipeState extends State<BestSellingCardSwipe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: bestSellingCategory.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 6.0, right: 0.0),
            child: BestSellingCardBuilder(
              bestSellingList: bestSellingCategory[index],
            ),
          );
        },
      ),
    );
  }
}

class BestSellingCardBuilder extends StatelessWidget {
  final BestSellingCategory bestSellingList;

  const BestSellingCardBuilder({Key key, this.bestSellingList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageLandingViewModel>(
      builder: (context, provider, child) {
        return Stack(
          children: [
            ClipRRect(
              child: Container(
                margin: EdgeInsets.only(
                    top: 30.0, bottom: 30.0, left: 15.0, right: 25.0),
                width: 170,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: kShadowCard,
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 0),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(16),
                  color: kWhite,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              bestSellingList.image,
                              height: 120,
                              width: 120,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  bestSellingList.name,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1
                                      .copyWith(fontSize: 18),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  bestSellingList.desc,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2
                                      .copyWith(fontSize: 10),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "\$ " + bestSellingList.price.toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2
                                      .copyWith(
                                        fontSize: 18,
                                        color: kMainBlue,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned.fill(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(16.0),
                          onTap: () => provider.toProductPage(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Bookmark Button

            Positioned(
              bottom: 20,
              right: 10,
              child: Stack(
                children: [
                  Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: kShadowCard,
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: Offset(0, 0),
                        ),
                      ],
                      color: kMainBlue,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Image.asset(
                      icon.icBookmark,
                    ),
                  ),
                  Positioned.fill(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(8.0),
                        onTap: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

// Card for Trending

class TrendingCardSwipe extends StatefulWidget {
  @override
  _TrendingCardSwipeState createState() => _TrendingCardSwipeState();
}

class _TrendingCardSwipeState extends State<TrendingCardSwipe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: trendingListCategory.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 6.0, right: 0, bottom: 20.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 6.0, right: 0.0),
              child: TrendingListCardBuilder(
                trendingList: trendingListCategory[index],
              ),
            ),
          );
        },
      ),
    );
  }
}

class TrendingListCardBuilder extends StatelessWidget {
  final TrendingListCategory trendingList;

  const TrendingListCardBuilder({Key key, this.trendingList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PageLandingViewModel>(
      builder: (context, provider, child) {
        return ClipRRect(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
            width: 170,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: kShadowCard,
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: Offset(0, 0),
                ),
              ],
              borderRadius: BorderRadius.circular(16),
              color: kWhite,
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          trendingList.image,
                          height: 120,
                          width: 120,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              trendingList.name,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  .copyWith(fontSize: 18),
                            ),
                            SizedBox(height: 8),
                            Text(
                              trendingList.desc,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  .copyWith(fontSize: 10),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "\$ " + trendingList.price.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  .copyWith(
                                    fontSize: 18,
                                    color: kMainBlue,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16.0),
                      onTap: () => provider.toProductPage(context),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
