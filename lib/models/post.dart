class Post {
  late String idAuthor;
  late String nameAuther;
  late String urlImage;
  late String descriptionAuther;
  late String tilte;
  late List<String> images;
  late DateTime datePublish;
  late int numberLikes;
  late List<String> comments;
  late int numberShare;

  Post(
      {required this.idAuthor,
      required this.nameAuther,
      required this.urlImage,
      required this.descriptionAuther,
      required this.tilte,
      required this.images,
      required this.datePublish,
      required this.numberLikes,
      required this.comments,
      required this.numberShare});
}
