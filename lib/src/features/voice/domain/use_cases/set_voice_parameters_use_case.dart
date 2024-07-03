import 'package:basiccom/src/core/error/failures.dart';
import 'package:basiccom/src/features/voice/domain/entities/voice_parameters.dart';
import 'package:basiccom/src/features/voice/domain/repositories/voice_repository.dart';
import 'package:dartz/dartz.dart';

class SetVoiceParametersUseCase {
  final VoiceRepository repository;

  SetVoiceParametersUseCase({required this.repository});

  Future<Either<Failure, bool>> call(VoiceParameters parameters) {
    return repository.setVoiceParameters(parameters);
  }
}