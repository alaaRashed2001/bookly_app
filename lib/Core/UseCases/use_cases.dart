import 'package:bookly_app/Core/Errors/failure_class.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Param> {
  Future<Either<FailureClass, Type>> call([Param param]);
}

class NoParam {}
