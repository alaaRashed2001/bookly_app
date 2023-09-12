import 'package:bookly_app/Core/Errors/failure_class.dart';
import 'package:bookly_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository{
Future<Either< FailureClass, List<BookEntity>>> fetchFeaturedBooks();
Future<Either< FailureClass, List<BookEntity>>> fetchNewestBooks();
}