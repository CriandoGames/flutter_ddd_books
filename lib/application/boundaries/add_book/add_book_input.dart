import 'package:flutter_ddd/domain/valueObjects/author/author.dart';
import 'package:flutter_ddd/domain/valueObjects/date/date_publish.dart';
import 'package:flutter_ddd/domain/valueObjects/identity/identity.dart';
import 'package:flutter_ddd/domain/valueObjects/isbn/isbn.dart';
import 'package:flutter_ddd/domain/valueObjects/title/title.dart';

class AddBookInput {
  final Identity shelfId;
  final Title title;
  final Author author;
  final ISBN isbn;
  final DatePublish publishDate;

  AddBookInput(
      {required this.shelfId,
      required this.title,
      required this.author,
      required this.isbn,
      required this.publishDate});
}
