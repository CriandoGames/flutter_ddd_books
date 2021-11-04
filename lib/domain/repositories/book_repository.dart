import 'package:flutter_ddd/domain/entities/book.dart';
import 'package:flutter_ddd/domain/valueObjects/identity/identity.dart';

abstract class IBookRepository {
  add(Book book);
  update(Book book);
  delete({required Identity bookId});
  find({required Identity bookId});
  findAll();
}
