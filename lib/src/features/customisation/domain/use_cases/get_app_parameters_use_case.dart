import 'package:basiccom/src/core/error/failures.dart';
import 'package:basiccom/src/features/customisation/domain/entities/app_parameters.dart';
import 'package:basiccom/src/features/customisation/domain/repositories/customisation_repository.dart';
import 'package:dartz/dartz.dart';

class GetAppParametersUseCase {
  final CustomisationRepository repository;

  GetAppParametersUseCase({required this.repository});

  Future<Either<Failure, AppParameters>> call() {
    return repository.getAppParameters();
  }
}