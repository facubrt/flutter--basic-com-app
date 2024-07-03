import 'package:basiccom/src/core/error/failures.dart';
import 'package:basiccom/src/features/voice/domain/entities/voice_parameters.dart';
import 'package:basiccom/src/features/voice/domain/repositories/voice_repository.dart';
import 'package:dartz/dartz.dart';

class GetVoiceParametersUseCase {

  final VoiceRepository repository;

  GetVoiceParametersUseCase({required this.repository});

  Future<Either<Failure, VoiceParameters>> call() {
    return repository.getVoiceParameters();
  }

}