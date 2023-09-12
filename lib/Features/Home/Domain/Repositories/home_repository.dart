import 'package:bookly_app/Features/Home/Domain/Entities/book_entity.dart';

abstract class HomeRepository{
Future<List<BookEntity>> fetchFeaturedBooks();
Future<List<BookEntity>> fetchNewsBooks();
}