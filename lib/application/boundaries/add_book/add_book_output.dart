import 'package:flutter_ddd/domain/valueObjects/author/author.dart';
import 'package:flutter_ddd/domain/valueObjects/date/date_publish.dart';
import 'package:flutter_ddd/domain/valueObjects/identity/identity.dart';
import 'package:flutter_ddd/domain/valueObjects/isbn/isbn.dart';
import 'package:flutter_ddd/domain/valueObjects/title/title.dart';

class AddBookOutput {
  final Identity bookid;
  final Identity shelfId;
  final Title title;
  final Author author;
  final ISBN isbn;
  final DatePublish publishDate;

  AddBookOutput(this.bookid, this.shelfId, this.title, this.author, this.isbn,
      this.publishDate);
}
