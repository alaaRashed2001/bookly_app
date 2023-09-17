import 'package:bookly_app/Features/Home/Domain/Entities/book_entity.dart';

abstract class HomeLocalDataSource{
 List<BookEntity> fetchFeaturedBooks();
 List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImplementation extends HomeLocalDataSource{
  @override
  List<BookEntity> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }

}