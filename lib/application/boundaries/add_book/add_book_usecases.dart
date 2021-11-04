import 'package:flutter_ddd/application/boundaries/add_book/add_book_input.dart';
import 'package:flutter_ddd/application/boundaries/add_book/add_book_output.dart';
import 'package:flutter_ddd/application/usecase.dart';

abstract class IAddBookUsecases extends IUsecase<AddBookInput, AddBookOutput> {}
