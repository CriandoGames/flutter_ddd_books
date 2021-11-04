import 'package:either_dart/either.dart';

import 'package:flutter_ddd/application/boundaries/add_book/add_book_input.dart';
import 'package:flutter_ddd/application/boundaries/add_book/add_book_output.dart';
import 'package:flutter_ddd/application/boundaries/add_book/add_book_usecases.dart';
import 'package:flutter_ddd/domain/entities/errors/failure_maximum_capacity_bookshelf.dart';
import 'package:flutter_ddd/domain/error.dart';
import 'package:flutter_ddd/domain/factories/entity_factory.dart';
import 'package:flutter_ddd/domain/repositories/book_repository.dart';
import 'package:flutter_ddd/domain/repositories/shelf_repository.dart';

class AddBookUseCase implements IAddBookUsecases {
  final IBookRepository _bookRepository;
  final IShelfRepository _shelfRepository;
  final IEntityFactory _entityFactory;

  AddBookUseCase({
    required IShelfRepository shelfRepository,
    required IBookRepository bookRepository,
    required IEntityFactory entityFactory,
  })  : _shelfRepository = shelfRepository,
        _bookRepository = bookRepository,
        _entityFactory = entityFactory;

  @override
  Future<Either<Failure, AddBookOutput>> execute(AddBookInput input) async {
    return Left(FailureMaximumCapacityBookshelf.create());
  }
}
