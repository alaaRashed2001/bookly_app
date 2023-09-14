import 'package:bookly_app/Core/Errors/failure_class.dart';
import 'package:bookly_app/Core/UseCases/use_cases.dart';
import 'package:bookly_app/Features/Home/Domain/Entities/book_entity.dart';
import 'package:bookly_app/Features/Home/Domain/Repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepository homeRepository;
  FetchFeaturedBooksUseCase(this.homeRepository);

  @override
  Future<Either<FailureClass, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepository.fetchFeaturedBooks();
  }
}
