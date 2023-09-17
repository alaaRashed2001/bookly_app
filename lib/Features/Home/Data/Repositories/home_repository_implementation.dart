import 'package:bookly_app/Core/Errors/failure_class.dart';
import 'package:bookly_app/Features/Home/Data/DataSources/home_local_data_source.dart';
import 'package:bookly_app/Features/Home/Data/DataSources/home_remote_data_source.dart';
import 'package:bookly_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:bookly_app/Features/Home/Domain/Repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImplementation extends HomeRepository {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;
  HomeRepositoryImplementation(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});
  @override
  Future<Either<FailureClass, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchFeaturedBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchFeaturedBooks();

      return right(books);
    } catch (e) {
      return left(FailureClass());
    }
  }

  @override
  Future<Either<FailureClass, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchNewestBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();

      return right(books);
    } catch (e) {
      return left(FailureClass());
    }
  }
}
