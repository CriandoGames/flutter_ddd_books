import 'package:flutter_ddd/domain/valueObjects/errors/failure_title_empty.dart';
import 'package:flutter_ddd/domain/valueObjects/title/title.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('Title', () {
    test('Should be returm Failure when value is Empty', () {
      var title = Title.create('');

      expect(title.isLeft, true);
      expect(title.left, isA<FailureTitleEmpty>());
    });
    test('Should be create title', () {
      var title = Title.create('title  create');

      expect(title.isRight, true);
      expect(title.right, 'title  create');
    });
  });
}
