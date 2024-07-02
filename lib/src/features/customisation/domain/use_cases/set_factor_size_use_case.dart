import 'package:bicom/src/core/error/failures.dart';
import 'package:bicom/src/features/customisation/domain/repositories/customisation_repository.dart';
import 'package:dartz/dartz.dart';

class SetFactorSizeUseCase {
  final CustomisationRepository repository;
  
  SetFactorSizeUseCase(this.repository);

  Either<Failure, bool> call(double size, String factorText) {
    return repository.setFactorSize(size, factorText);
  }
}