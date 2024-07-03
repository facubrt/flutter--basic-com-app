import 'package:basiccom/src/core/error/failures.dart';
import 'package:basiccom/src/features/voice/domain/repositories/voice_repository.dart';
import 'package:dartz/dartz.dart';

class SpeakUseCase {
  final VoiceRepository repository;

  const SpeakUseCase(this.repository);

  Future<Either<Failure, bool>> call(String text) {
    return repository.speak(text);
  }
}