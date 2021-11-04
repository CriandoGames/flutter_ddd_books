import 'package:flutter_ddd/domain/valueObjects/date/date_publish.dart';
import 'package:flutter_ddd/domain/valueObjects/errors/failure_data_iccorrect_formar.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  group('PublishDate', () {
    test('should return failure when date is not formatted properly', () {
      //arrange
      var date =
          DatePublish.create('2019.01.20');

      //assert
      expect(date.isLeft, true);
      expect(date.left, isA<FailureDataIccorrectFormar>());
    });

    test('should set date when date is valid', () {
      //arrange
      var dateStr = '2019-01-20';
      var date = DatePublish.create(dateStr);

      //assert
      expect(date.right.toDate(), DateTime(2019, 01, 20));
    });
  });
}
