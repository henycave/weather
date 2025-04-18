abstract class Failure {
  final String message;
  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
}

class NetworkFailure extends Failure {
  NetworkFailure(super.message);
}

class LocationFailure extends Failure {
  LocationFailure(super.message);
}

class StorageFailure extends Failure {
  StorageFailure(super.message);
}

