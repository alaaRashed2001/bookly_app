class BookEntity {
  final String bookId;
  final String? imgUrl;
  final String title;
  final String? authorName;
  final num? price;
  final num? rating;

  BookEntity({
    required this.bookId,
    required this.imgUrl,
    required this.title,
    required this.authorName,
    required this.price,
    required this.rating,
  });
}
