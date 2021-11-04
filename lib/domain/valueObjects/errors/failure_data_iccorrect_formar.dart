class FailureDataIccorrectFormar  implements Exception{
  final String message;

  FailureDataIccorrectFormar(this.message);

 @override
  String toString() => 'FailureDataIccorrectFormar: $message';
}
