import 'package:flutter_ddd/domain/valueObjects/author/author.dart';
import 'package:flutter_ddd/domain/valueObjects/errors/failure_author_empty.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('Author', () {
    test('Should be returm Failure when Author is nullo or empty', () {
      final author = Author.create('');

      expect(author.isLeft, true);
      expect(author.left, isA<FailureAuthorEmpty>());
    });

    test('Should be create Author with correct values', () {
      final author = Author.create('Carlos');

      expect(author.isRight, true);
      expect(author.right.value, 'Carlos');
    });
  });
}
