
abstract class Failure{
  final String message;

   const  Failure(this.message);

}

class ServerFailure extends Failure{
  const ServerFailure(super.message);
}

class DataBaseFailure extends Failure{
  const DataBaseFailure(super.message);
}
