 
import 'package:either_dart/either.dart';
import 'package:flutter_ddd/domain/error.dart';

abstract class IUsecase<TUserCaseInput,TUserCaseOutput> {
  Future<Either<Failure,TUserCaseOutput>> execute(TUserCaseInput input); 
}