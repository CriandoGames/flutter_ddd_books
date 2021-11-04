import 'package:flutter_ddd/domain/entities/book_shelf.dart';
import 'package:flutter_ddd/domain/entities/errors/failure_maximum_capacity_bookshelf.dart';

import 'package:flutter_ddd/domain/valueObjects/identity/identity.dart';

import 'package:flutter_test/flutter_test.dart';
import '../../mock/book_mock.dart';
main() {
  late BookShelf sut;


  setUp(() {
    sut = BookShelf(id: Identity.fromString('id'));
  });
  group('BookShelfs', () {
    test(
        'addBook Should throw and Failure Maximum Capacity Bookshelf when bookshelf execeeds its capacity',
        () {
      //arrange
      for (int i = 0; i < 10; i++) {
        sut.addBook(mockBook);
      }

      expect(() => sut.addBook(mockBook),
          throwsA(isA<FailureMaximumCapacityBookshelf>()));
    });

    test('addBook Should add book to shelf', () {
      //arrange
      sut.addBook(mockBook);

      expect(sut.books.length, 1);
    });
  });
}
