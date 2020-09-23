import '../../core/const/path/image.dart' as image;

class TrendingListCategory {
  final String name, desc, image;
  final double price;

  const TrendingListCategory({this.name, this.desc, this.image, this.price});
}

List<TrendingListCategory> trendingListCategory = [
  TrendingListCategory(
      name: "Elmoka Coffeechair",
      desc: "Generic but awesome.",
      price: 139.99,
      image: image.elmoka),
  TrendingListCategory(
      name: "Igor Sofa",
      desc: "The Attendant's fav.",
      price: 139.99,
      image: image.igor),
  TrendingListCategory(
      name: "Inaba Coffeechair",
      desc: "Hometown's feel.",
      price: 129.99,
      image: image.inaba),
  TrendingListCategory(
      name: "Maruya Armchair",
      desc: "Jakarta's fav.",
      price: 99.99,
      image: image.maruya),
  TrendingListCategory(
      name: "Rhodes Coffeechair",
      desc: "Dokutah's chair.",
      price: 179.99,
      image: image.rhodes),
  TrendingListCategory(
      name: "Sway Coffeechair",
      desc: "Coffeeshop recommended.",
      price: 159.99,
      image: image.swayVint),
  TrendingListCategory(
      name: "Tidy Coffeechair",
      desc: "Clean and Tidy.",
      price: 132.99,
      image: image.tidy),
  TrendingListCategory(
      name: "Velvetroom Armchair",
      desc: "The Attendant's fav.",
      price: 179.99,
      image: image.velvetRoom),
];
