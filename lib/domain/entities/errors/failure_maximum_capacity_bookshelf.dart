import 'package:flutter_ddd/domain/error.dart';

class FailureMaximumCapacityBookshelf extends Failure {
  final String message;

  FailureMaximumCapacityBookshelf._(this.message);

  static FailureMaximumCapacityBookshelf create() {
    return FailureMaximumCapacityBookshelf._('FailureMaximumCapacityBookshelf');
  }
}
