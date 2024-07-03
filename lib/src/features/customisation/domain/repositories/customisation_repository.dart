import 'package:basiccom/src/core/error/failures.dart';
import 'package:basiccom/src/features/customisation/domain/entities/app_parameters.dart';
import 'package:dartz/dartz.dart';

abstract class CustomisationRepository {
  Future<Either<Failure, bool>> initAppParameters();
  Future<Either<Failure, bool>> setAppParameters(AppParameters parameters);
  Future<Either<Failure, AppParameters>> getAppParameters();
  Future<Either<Failure, bool>> clearAppParameters();
}