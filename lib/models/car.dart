import 'package:eccomerce_app/models/brand.dart';

class Car {
  final int id;
  final String name;
  final String image;
  final int price;
  final int stars;
  final int ratingsCount;
  final String enginePower;
  final String maxTorque;
  final String acceleration;
  final Brand brand;
  late bool checkToCompare;

  Car({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.stars,
    required this.ratingsCount,
    required this.enginePower,
    required this.maxTorque,
    required this.acceleration,
    required this.brand,
    required this.checkToCompare
  });

  Car copyWith({
    int? id,
    String? name,
    String? image,
    int? price,
    int? stars,
    int? ratingsCount,
    String? enginePower,
    String? maxTorque,
    String? acceleration,
    Brand? brand,
  }) =>
      Car(
        id: id ?? this.id,
        name: name ?? this.name,
        image: image ?? this.image,
        price: price ?? this.price,
        stars: stars ?? this.stars,
        ratingsCount: ratingsCount ?? this.ratingsCount,
        enginePower: enginePower ?? this.enginePower,
        maxTorque: maxTorque ?? this.maxTorque,
        acceleration: acceleration ?? this.acceleration,
        brand: brand ?? this.brand,
        checkToCompare: checkToCompare ?? this.checkToCompare,
      );


  factory Car.fromJson(Map<String, dynamic> json) => Car(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    price: json["price"],
    stars: json["stars"],
    ratingsCount: json["ratings_count"],
    enginePower: json["engine_power"],
    maxTorque: json["max_torque"],
    acceleration: json["acceleration"],
    brand: Brand.fromJson(json["brand"]), checkToCompare: false,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "price": price,
    "stars": stars,
    "ratings_count": ratingsCount,
    "engine_power": enginePower,
    "max_torque": maxTorque,
    "acceleration": acceleration,
    "brand": brand.toJson(),
  };
}

