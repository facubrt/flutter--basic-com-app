import 'package:basiccom/src/core/error/failures.dart';
import 'package:basiccom/src/features/voice/domain/repositories/voice_repository.dart';
import 'package:dartz/dartz.dart';

class ClearVoiceParametersUseCase {
  final VoiceRepository repository;

  ClearVoiceParametersUseCase({required this.repository});

  Future<Either<Failure, bool>> call() {
    return repository.clearVoiceParameters();
  }
}