import 'package:basiccom/src/features/voice/data/data_sources/local/voice_local_data_source.dart';
import 'package:basiccom/src/features/voice/data/repositories/voice_repository_impl.dart';
import 'package:basiccom/src/features/voice/services/voice_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'voice_controller.g.dart';

@Riverpod(keepAlive: true)
class VoiceController extends _$VoiceController {
  final VoiceService voiceService = VoiceService(
    repository: VoiceRepositoryImpl(
        voiceLocalDataSource: HiveVoiceLocalDataSourceImpl()),
  );

  Future<void> build() async {
    voiceService.initLanguages();
    final result = await voiceService.getVoiceParameters();
    result.fold(
      (f) => f,
      (r) => r,
    );
  }

  Future<void> speak({required String text}) async {
    final result = await voiceService.speak(text);
    result.fold(
      (f) => f,
      (r) => r,
    );
  }
}
