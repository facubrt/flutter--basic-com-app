import 'package:bicom/src/core/error/failures.dart';
import 'package:bicom/src/features/customisation/domain/repositories/customisation_repository.dart';
import 'package:dartz/dartz.dart';

class SetHighContrastUseCase {
  final CustomisationRepository repository;

  SetHighContrastUseCase(this.repository);

  Either<Failure, bool> call(bool status) {
    return repository.setHighContrast(status);
  }
}