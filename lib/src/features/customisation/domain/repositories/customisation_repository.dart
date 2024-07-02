import 'package:bicom/src/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class CustomisationRepository {
  Either<Failure, bool> initAppParameters();
  Either<Failure, bool> setFactorSize(double size, String factorText);
  Either<Failure, bool> setCardStyle(String cardStyle);
  Either<Failure, bool> setHighContrast(bool status);
  
}