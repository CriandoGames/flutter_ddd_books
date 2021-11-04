import 'package:flutter_ddd/domain/entities/book.dart';
import 'package:flutter_ddd/domain/entities/book_shelf.dart';
import 'package:flutter_ddd/domain/valueObjects/identity/identity.dart';

abstract class IShelfRepository {
  add(BookShelf bookShelf);
  update(BookShelf bookShelf);
  find(Identity shelfid);
}
