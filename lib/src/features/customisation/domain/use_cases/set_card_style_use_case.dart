import 'package:bicom/src/core/error/failures.dart';
import 'package:bicom/src/features/customisation/domain/repositories/customisation_repository.dart';
import 'package:dartz/dartz.dart';

class SetCardStyleUseCase {

  final CustomisationRepository repository;

  SetCardStyleUseCase({required this.repository});

  Either<Failure, bool> call(String cardStyle) {
    return repository.setCardStyle(cardStyle);
  }
}