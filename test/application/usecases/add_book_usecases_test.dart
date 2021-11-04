import 'package:either_dart/either.dart';
import 'package:flutter_ddd/application/boundaries/add_book/add_book_input.dart';
import 'package:flutter_ddd/application/usecases/add_book_use_case.dart';
import 'package:flutter_ddd/domain/error.dart';
import 'package:flutter_ddd/domain/factories/entity_factory.dart';
import 'package:flutter_ddd/domain/repositories/book_repository.dart';
import 'package:flutter_ddd/domain/repositories/shelf_repository.dart';
import 'package:flutter_ddd/domain/valueObjects/identity/identity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock/book_mock.dart';

class MockShelfRepository extends Mock implements IShelfRepository {}

class MockBookRepository extends Mock implements IBookRepository {}

class MockEntityFactory extends Mock implements IEntityFactory {}

void main() {
  late AddBookUseCase sut;
  late MockShelfRepository mockShelfRepository;
  late MockBookRepository mockBookRepository;
  late MockEntityFactory mockEntityFactory;

  setUp(() {
    mockBookRepository = MockBookRepository();
    mockShelfRepository = MockShelfRepository();
    mockEntityFactory = MockEntityFactory();

    sut = AddBookUseCase(
        shelfRepository: mockShelfRepository,
        bookRepository: mockBookRepository,
        entityFactory: mockEntityFactory);
  });

  group('UseCases AddBook ', () {
    var input = AddBookInput(
        title: mockBook.tile,
        author: mockBook.author,
        isbn: mockBook.isbn,
        publishDate: mockBook.date,
        shelfId: Identity.fromString('id'));
    test('should return a failure when add bookshelf if not exist', () async {
      //arrange
      when(mockShelfRepository.find(input.shelfId)).thenAnswer((_)  => Left(Failure));

      var result = await sut.f(input);

      expect(()=> sut.execute(input).isLeft, true);
    });
  });
}
