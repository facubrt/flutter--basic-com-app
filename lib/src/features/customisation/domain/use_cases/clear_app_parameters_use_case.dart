import 'package:basiccom/src/core/error/failures.dart';
import 'package:basiccom/src/features/customisation/domain/repositories/customisation_repository.dart';
import 'package:dartz/dartz.dart';

class ClearAppParametersUseCase {
  final CustomisationRepository repository;

  ClearAppParametersUseCase({required this.repository});

  Future<Either<Failure, bool>> call() {
    return repository.clearAppParameters();
  }
}