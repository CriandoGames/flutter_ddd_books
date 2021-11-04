import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_ddd/domain/valueObjects/errors/failure_isbn_invalide.dart';


class ISBN extends Equatable {

  final String value;
  const ISBN._(
     this.value,
  );

  static Either<Exception,ISBN> create(String value){

    if(_isValid(value)){
      return Right(ISBN._(value));
    }else {
      return Left(FailureISBNInvalide('FailureISBNInvalide'));
    }
  }

  static bool _isValid(String value) {
    var regex =
        r'^(?:ISBN(?:-1[03])?:? )?(?=[0-9X]{10}$|(?=(?:[0-9]+[- ]){3})[- 0-9X]{13}$|97[89][0-9]{10}$|(?=(?:[0-9]+[- ]){4})[- 0-9]{17}$)(?:97[89][- ]?)?[0-9]{1,5}[- ]?[0-9]+[- ]?[0-9]+[- ]?[0-9X]$';

    RegExp exp = RegExp(regex);

    return exp.hasMatch(value);
  }

  @override
  List<Object?> get props => [value];

   @override
  String toString() => 'ISBN: $value';

}