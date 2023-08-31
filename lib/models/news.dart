class News {
  late String idAuthor;
  late String nameAuther;
  late String urlImage;
  late String descriptionAuther;
  late String tilte;
  late List<String> images;
  late DateTime datePublish;


  News(
      {required this.idAuthor,
        required this.nameAuther,
        required this.urlImage,
        required this.descriptionAuther,
        required this.tilte,
        required this.images,
        required this.datePublish,
      });
}
