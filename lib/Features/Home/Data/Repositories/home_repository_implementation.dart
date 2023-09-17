import 'package:bookly_app/Core/Errors/failure_class.dart';
import 'package:bookly_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:bookly_app/Features/Home/Domain/Repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImplementation extends HomeRepository {
  @override
  Future<Either<FailureClass, List<BookEntity>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<FailureClass, List<BookEntity>>> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}
