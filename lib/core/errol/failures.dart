class Failure {
  Failure(this.message, this.statusCode);

  // Failure.fromException({
  //   required AppException exception,
  // })  : message = exception.message,
  //       statusCode = exception.statusCode;

  final String message;
  final dynamic statusCode;

  String get errorMessage => '''
  ${
    statusCode is String
      ? statusCode
      : statusCode is num
        ? statusCode.toString()
        : 'Error'
  }: $message''';

}