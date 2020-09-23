import '../../core/const/path/image.dart' as image;

class ArrivalListCategory {
  final String name, type, image;

  ArrivalListCategory({this.name, this.type, this.image});
}

List<ArrivalListCategory> arrivalListCategory = [
  ArrivalListCategory(
    name: "Maruya",
    type: "Armchair",
    image: image.maruya,
  ),
  ArrivalListCategory(
    name: "Tidy",
    type: "Coffeechair",
    image: image.tidy,
  ),
  ArrivalListCategory(
    name: "Inaba",
    type: "Coffeechair",
    image: image.inaba,
  ),
];

/*
List<ArrivalListCategory> arrivalListCategory = arrivalListCategoryData
    .map((item) =>
        ArrivalListCategory(item["name"], item["type"], item["image"]))
    .toList();

var arrivalListCategoryData = [
  {"name": "Maruya", "type": "Armchair", "image": image.maruya},
  {"name": "Tidy", "type": "Coffeechair", "image": image.tidy},
  {"name": "Inaba", "type": "Coffeechair", "image": image.inaba}
];
*/
