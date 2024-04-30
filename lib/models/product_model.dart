class Product {
  final int id;
  final String title;
  final String desc;
  final String imgURL;
  final double price;
  final bool isFavourite;

  Product(
      {required this.id,
      required this.title,
      required this.desc,
      required this.imgURL,
      required this.price,
      this.isFavourite = false});
}
