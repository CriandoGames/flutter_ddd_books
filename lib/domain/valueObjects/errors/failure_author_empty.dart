class FailureAuthorEmpty implements Exception {
  final String message;

  FailureAuthorEmpty._(this.message);

  static FailureAuthorEmpty create(){
    return  FailureAuthorEmpty._('FailureAuthorEmpty');
  }


}