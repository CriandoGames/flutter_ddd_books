
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';

import '../errors/failure_author_empty.dart';


class Author extends Equatable {
  final String value;

  const Author._(this.value);

  static Either<FailureAuthorEmpty, Author> create(String value) {
    if (value.isEmpty || value == '') {
      return Left(FailureAuthorEmpty.create());
    } else {
      return Right(Author._(value));
    }
  }

  @override
  List<Object> get props => [value];
}