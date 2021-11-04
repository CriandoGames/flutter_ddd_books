// ignore_for_file: constant_identifier_names

import 'package:flutter_ddd/domain/entities/book.dart';
import 'package:flutter_ddd/domain/valueObjects/identity/identity.dart';

import 'errors/failure_maximum_capacity_bookshelf.dart';

class BookShelf {
  static const MAX_CAPACITY = 10;
  late List<Book> _books;
  final Identity id;
  List<Book> get books  => _books;
  BookShelf({required this.id}) {
    _books = [];
  }

  addBook(Book book) {
    if (_books.length == MAX_CAPACITY) {
      throw FailureMaximumCapacityBookshelf.create();
    } else {
      book.shelfId = id;
      _books.add(book);
    }
  }
}
