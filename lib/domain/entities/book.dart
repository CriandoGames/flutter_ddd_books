
import 'package:flutter_ddd/domain/valueObjects/author/author.dart';
import 'package:flutter_ddd/domain/valueObjects/date/date_publish.dart';
import 'package:flutter_ddd/domain/valueObjects/identity/identity.dart';
import 'package:flutter_ddd/domain/valueObjects/isbn/isbn.dart';
import 'package:flutter_ddd/domain/valueObjects/title/title.dart';

class Book {
  Author author;
  Title tile;
  DatePublish date;
  ISBN isbn;
  Identity id;
  Identity shelfId;
  
  Book({
    required this.author,
    required this.tile,
    required this.date,
    required this.isbn,
    required this.id,
    required this.shelfId,
  });
}
