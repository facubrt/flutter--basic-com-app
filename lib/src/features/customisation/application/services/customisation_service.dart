import 'package:basiccom/src/core/error/failures.dart';
import 'package:basiccom/src/features/customisation/domain/entities/app_parameters.dart';
import 'package:basiccom/src/features/customisation/domain/repositories/customisation_repository.dart';
import 'package:dartz/dartz.dart';

class CustomisationService {
  final CustomisationRepository repository;

  CustomisationService({required this.repository});

  Future<Either<Failure, bool>> initAppParameters() async {
    return repository.initAppParameters();
  }

  Future<Either<Failure, bool>> setAppParameters(AppParameters parameters) async {
    return repository.setAppParameters(parameters);
  }

  Future<Either<Failure, AppParameters>> getAppParameters() async {
    return repository.getAppParameters();
  }

  Future<Either<Failure, bool>> clearAppParameters() async {
    return repository.clearAppParameters();
  }
}
