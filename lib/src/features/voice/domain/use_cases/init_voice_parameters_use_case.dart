import 'package:basiccom/src/core/error/failures.dart';
import 'package:basiccom/src/features/voice/domain/repositories/voice_repository.dart';
import 'package:dartz/dartz.dart';

class InitVoiceParametersUseCase {
  final VoiceRepository repository;

  InitVoiceParametersUseCase({required this.repository});
  
  Future<Either<Failure, bool>> call() {
    return repository.initVoiceParameters();
  }
}