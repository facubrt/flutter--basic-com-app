import 'package:basiccom/src/voice/application/services/voice_service.dart';
import 'package:basiccom/src/voice/domain/entities/voice_parameters.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'voice_controller.g.dart';

@Riverpod(keepAlive: true)
class VoiceController extends _$VoiceController {
  final VoiceService voiceService = VoiceService();

  @override
  VoiceParameters build() => VoiceService().voiceParameters;

  Future<void> speak({required String text}) async {
    final result = await voiceService.speak(text);
    result.fold(
      (f) => f,
      (r) => r,
    );
  }
  
}
