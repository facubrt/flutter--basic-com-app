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

  Future<bool> setVolume(double volume) async {
    double _volume = state.volume;
    if (_volume + volume > 0 && _volume + volume <= 1) {
      _volume += volume;
    }

    final VoiceParameters parameters = VoiceParameters(
      volume: double.parse(_volume.toStringAsFixed(2)),
      rate: state.rate,
      pitch: state.pitch,
      text: state.text,
    );
    state = parameters;
    return voiceService.setVoiceParameters(parameters);
  }

  Future<bool> setRate(double rate) async {
    double _rate = state.rate;
    if (_rate + rate > 0 && _rate + rate <= 1) {
      _rate += rate;
    }
    final VoiceParameters parameters = VoiceParameters(
      volume: state.volume,
      rate: double.parse(_rate.toStringAsFixed(2)),
      pitch: state.pitch,
      text: state.text,
    );
    state = parameters;
    return voiceService.setVoiceParameters(parameters);
  }

  Future<bool> setPitch(double pitch) async {
    double _pitch = state.pitch;
    if (_pitch + pitch > 0 && _pitch + pitch <= 1) {
      _pitch += pitch;
    }
    final VoiceParameters parameters = VoiceParameters(
      volume: state.volume,
      rate: state.rate,
      pitch: double.parse(_pitch.toStringAsFixed(2)),
      text: state.text,
    );

    state = parameters;
    return voiceService.setVoiceParameters(parameters);
  }

  Future<bool> setText({required String text}) async {
    final VoiceParameters parameters = VoiceParameters(
      volume: state.volume,
      rate: state.rate,
      pitch: state.pitch,
      text: text,
    );

    state = parameters;
    return voiceService.setVoiceParameters(parameters);
  }
}
