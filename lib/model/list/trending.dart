import '../../core/const/path/image.dart' as image;

class TrendingListCategory {
  final String name, description, image;
  final double price;

  const TrendingListCategory(
      {this.name, this.description, this.image, this.price});
}

List<TrendingListCategory> trendingListCategory = [
  TrendingListCategory(
      name: "Elmoka Coffeechair",
      description: "Generic but awesome.",
      price: 139.99,
      image: image.elmoka),
  TrendingListCategory(
      name: "Igor Sofa",
      description: "The Attendant's fav.",
      price: 139.99,
      image: image.igor),
  TrendingListCategory(
      name: "Inaba Coffeechair",
      description: "Hometown's feel.",
      price: 129.99,
      image: image.inaba),
  TrendingListCategory(
      name: "Maruya Armchair",
      description: "Jakarta's fav.",
      price: 99.99,
      image: image.maruya),
  TrendingListCategory(
      name: "Rhodes Coffeechair",
      description: "Dokutah's chair.",
      price: 179.99,
      image: image.rhodes),
  TrendingListCategory(
      name: "Sway Coffeechair",
      description: "Coffeeshop recommended.",
      price: 159.99,
      image: image.swayVint),
  TrendingListCategory(
      name: "Tidy Coffeechair",
      description: "Clean and Tidy.",
      price: 132.99,
      image: image.tidy),
  TrendingListCategory(
      name: "Velvetroom Armchair",
      description: "The Attendant's fav.",
      price: 179.99,
      image: image.velvetRoom),
];
