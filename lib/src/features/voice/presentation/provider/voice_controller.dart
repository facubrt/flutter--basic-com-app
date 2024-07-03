import 'package:basiccom/src/features/voice/services/voice_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'voice_controller.g.dart';

@Riverpod(keepAlive: true)
class VoiceController extends _$VoiceController {
  final VoiceService voiceService;

  
}