import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_ddd/domain/valueObjects/errors/failure_data_iccorrect_formar.dart';
import 'package:intl/intl.dart';

class DatePublish extends Equatable {
  final String value;

  const DatePublish._(this.value);

  static Either<Exception, DatePublish> create(String value) {
    final formatter = DateFormat('yyyy-MM-dd');

    try {
      formatter.parseStrict(value);
    } catch (e) {
      return Left(FailureDataIccorrectFormar('incorrect date format [yyyy-mm-dd]'));
    }
    return Right(DatePublish._(value));
  }

  DateTime toDate() => DateTime.parse(value);

  @override
  List<Object?> get props => [value];
}
