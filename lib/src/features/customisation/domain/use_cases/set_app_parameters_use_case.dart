import 'package:basiccom/src/core/error/failures.dart';
import 'package:basiccom/src/features/customisation/domain/entities/app_parameters.dart';
import 'package:basiccom/src/features/customisation/domain/repositories/customisation_repository.dart';
import 'package:dartz/dartz.dart';

class SetAppParametersUseCase {
  final CustomisationRepository repository;

  SetAppParametersUseCase({required this.repository});

  Future<Either<Failure, bool>> call(AppParameters parameters) {
    return repository.setAppParameters(parameters);
  }
}