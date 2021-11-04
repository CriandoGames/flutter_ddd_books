import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_ddd/domain/valueObjects/errors/failure_title_empty.dart';


class Title extends Equatable {
  final String value;

  const Title._(this.value);

  static Either<Exception, String> create(String value) {
    if (value.isEmpty || value == '') {
      return Left(FailureTitleEmpty('FailureTitleEmpty'));
    } else {
      return Right(value);
    }
  }

  @override
  List<Object?> get props => [value];

  @override
  String toString() => 'Title: $value';
}