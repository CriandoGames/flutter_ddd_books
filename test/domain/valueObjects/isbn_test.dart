

import 'package:flutter_ddd/domain/valueObjects/errors/failure_isbn_invalide.dart';
import 'package:flutter_ddd/domain/valueObjects/isbn/isbn.dart';
import 'package:flutter_test/flutter_test.dart';

main(){

group('ISBN', (){

  test('should return failure when invalide isbn', (){

    var isbn = ISBN.create('89998');

    expect(isbn.isLeft, true);
    expect(isbn.left, isA<FailureISBNInvalide>());

  });

    test('should return ISBN when valide isbn number  isbn-10', (){

     const String numberIsbn = 'ISBN-10: 0-596-52068-9';
    var isbn = ISBN.create(numberIsbn);

    expect(isbn.isRight, true);
    expect(isbn.right.value, numberIsbn);

  });

     test('should return ISBN when valide isbn number  isbn-13', (){

     const String numberIsbn = 'ISBN-13: 978-0-596-52068-7';
    var isbn = ISBN.create(numberIsbn);

    expect(isbn.isRight, true);
    expect(isbn.right.value, numberIsbn);

  });


});

}


