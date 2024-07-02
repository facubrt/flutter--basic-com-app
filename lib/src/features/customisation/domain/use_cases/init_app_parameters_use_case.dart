import 'package:bicom/src/core/error/failures.dart';
import 'package:bicom/src/features/customisation/domain/repositories/customisation_repository.dart';
import 'package:dartz/dartz.dart';

class InitAppParametersUseCase {
  final CustomisationRepository repository;

  InitAppParametersUseCase({required this.repository});

  Either<Failure, bool> call() {
    return repository.initAppParameters();
  }
}