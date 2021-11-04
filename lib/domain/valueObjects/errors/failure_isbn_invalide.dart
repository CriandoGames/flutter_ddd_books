class FailureISBNInvalide  implements Exception{
  final String message;

  FailureISBNInvalide(this.message);

 @override
  String toString() => 'FailureISBNInvalide: $message';
}
