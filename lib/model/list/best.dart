import '../../core/const/path/image.dart' as image;

class BestSellingCategory {
  final String name, desc, image;
  final double price;

  BestSellingCategory({this.name, this.desc, this.price, this.image});
}

List<BestSellingCategory> bestSellingCategory = [
  BestSellingCategory(
    name: "Rhodes Coffeechair",
    desc: "Dokutah's chair.",
    price: 179.99,
    image: image.rhodes,
  ),
  BestSellingCategory(
    name: "Elmoka Coffeechair",
    desc: "Generic but awesome.",
    price: 139.99,
    image: image.elmoka,
  ),
  BestSellingCategory(
    name: "Velvetroom Armchair",
    desc: "The Attendant's fav.",
    price: 179.99,
    image: image.velvetRoom,
  ),
  BestSellingCategory(
    name: "Igor Sofa",
    desc: "Your acquintance.",
    price: 179.99,
    image: image.igor,
  ),
];
