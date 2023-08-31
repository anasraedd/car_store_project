class CarPrice {
  late String name;
  late String description;
  late String price;
  late String? image;
  late bool checkToCompare;

  CarPrice(
      {required this.name,
      required this.description,
      required this.price,
        this.image,
      required this.checkToCompare});
}
