
import 'package:hive_flutter/hive_flutter.dart';
part 'products_response.g.dart';

@HiveType(typeId: 1)
class ProductsResponse {
  @HiveField(0)
  late int id;
  @HiveField(1)
  late String title;
  @HiveField(2)
  late double price;
  @HiveField(3)
  late String description;
  @HiveField(4)
  late String image;
  @HiveField(5)
  late Rating rating;
    // @HiveField(6)
  // late Category category;

  ProductsResponse({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    // required this.category,
    required this.image,
    required this.rating,
  });

  factory ProductsResponse.fromJson(Map<String, dynamic> json) =>
      ProductsResponse(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
        description: json["description"],
        // category: categoryValues.map[json["category"]]!,
        image: json["image"],
        rating: Rating.fromJson(json["rating"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        // "category": categoryValues.reverse[category],
        "image": image,
        "rating": rating.toJson(),
      };
}
// @HiveType(typeId: 1)

// ignore: constant_identifier_names
// enum Category { ELECTRONICS, JEWELERY, MEN_S_CLOTHING, WOMEN_S_CLOTHING }

// final categoryValues = EnumValues({
//   "electronics": Category.ELECTRONICS,
//   "jewelery": Category.JEWELERY,
//   "men's clothing": Category.MEN_S_CLOTHING,
//   "women's clothing": Category.WOMEN_S_CLOTHING
// });


@HiveType(typeId: 2)
class Rating {
  @HiveField(0)
  double rate;
  @HiveField(1)
  int count;

  Rating({
    required this.rate,
    required this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json["rate"]?.toDouble(),
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
