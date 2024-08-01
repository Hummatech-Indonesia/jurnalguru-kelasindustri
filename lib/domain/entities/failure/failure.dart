class Failure {
  final String message;

  Failure(this.message);
}

class EmptyResponseFailure extends Failure {
  EmptyResponseFailure(super.message);
}

class ValidationFailure extends Failure {
  ValidationFailure(super.message);
}
