import 'package:basiccom/src/core/error/failures.dart';
import 'package:basiccom/src/features/voice/domain/entities/voice_parameters.dart';
import 'package:basiccom/src/features/voice/domain/repositories/voice_repository.dart';
import 'package:dartz/dartz.dart';

class VoiceService {
  final VoiceRepository repository;

  VoiceService({required this.repository});

  Future<Either<Failure, bool>> initVoiceParameters() async {
    return repository.initVoiceParameters();
  }

  Future<Either<Failure, bool>> initLanguages() async {
    return repository.initLanguages();
  }

  Future<Either<Failure, VoiceParameters>> getVoiceParameters() async {
    return repository.getVoiceParameters();
  }

  Future<Either<Failure, bool>> setVoiceParameters(VoiceParameters parameters) async {
    return repository.setVoiceParameters(parameters);
  }

  Future<Either<Failure, bool>> speak(String text) async {
    return repository.speak(text);
  }

  Future<Either<Failure, bool>> clearVoiceParameters() async {
    return repository.clearVoiceParameters();
  }
  
}