import 'package:flutter_ddd/domain/entities/book.dart';
import 'package:flutter_ddd/domain/entities/book_shelf.dart';
import 'package:flutter_ddd/domain/valueObjects/author/author.dart';
import 'package:flutter_ddd/domain/valueObjects/date/date_publish.dart';
import 'package:flutter_ddd/domain/valueObjects/isbn/isbn.dart';
import 'package:flutter_ddd/domain/valueObjects/title/title.dart';

abstract class IEntityFactory {
  Book newBook({
    required Title tile,
    required Author author,
    required ISBN isbn,
    required DatePublish publishDate,
  });

  BookShelf newBookShelf();
}
