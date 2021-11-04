import 'package:flutter_ddd/domain/entities/book.dart';
import 'package:flutter_ddd/domain/valueObjects/author/author.dart';
import 'package:flutter_ddd/domain/valueObjects/date/date_publish.dart';
import 'package:flutter_ddd/domain/valueObjects/identity/identity.dart';
import 'package:flutter_ddd/domain/valueObjects/isbn/isbn.dart';
import 'package:flutter_ddd/domain/valueObjects/title/title.dart';



var mockBook = Book(
    author: Author.create('author').right,
    tile: Title.create('title').right,
    date: DatePublish.create('2019-01-20').right,
    isbn: ISBN.create('ISBN-10: 0-596-52068-9').right,
    id: Identity.fromString('id'),
    shelfId: Identity.fromString('id'));
