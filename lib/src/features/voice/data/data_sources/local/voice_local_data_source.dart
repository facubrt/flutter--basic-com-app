import 'package:basiccom/src/core/error/failures.dart';
import 'package:basiccom/src/features/voice/data/models/voice_parameters_model.dart';
import 'package:basiccom/src/features/voice/domain/entities/voice_parameters.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class VoiceLocalDataSource {
  Future<bool> initVoiceParameters();
  Future<VoiceParametersModel> getVoiceParameters();
  Future<bool> setVoiceParameters(VoiceParameters parameters);
  Future<bool> clearVoiceParameters();
}

class HiveVoiceLocalDataSourceImpl implements VoiceLocalDataSource {

  HiveVoiceLocalDataSourceImpl() {
    Hive.initFlutter();
  }

  @override
  Future<bool> initVoiceParameters() async {
    try {
      Box<dynamic> box = await Hive.openBox('VoiceParameters');
      box.put(0, VoiceParametersModel.empty.toJson());
      return true;
    } catch (error) {
      throw LocalFailure(message: error.toString());
    }
  }

  @override
  Future<VoiceParametersModel> getVoiceParameters() async {
    try {
      Box<dynamic> box = await Hive.openBox('VoiceParameters');
      
      return VoiceParametersModel.fromJson(box.getAt(0));
    } catch (error) {
      throw LocalFailure(message: error.toString());
    }
  }

  @override
  Future<bool> setVoiceParameters(VoiceParameters parameters) async {
    try {
      Box<dynamic> box = await Hive.openBox('VoiceParameters');
      box.put(0, VoiceParametersModel.fromEntity(parameters));
      return true;
    } catch (error) {
      throw LocalFailure(message: error.toString());
    }
  }

   @override
  Future<bool> clearVoiceParameters() async {
    try {
      Box<dynamic> box = await Hive.openBox('VoiceParameters');
      box.clear();
      return true;
    } catch (error) {
      throw LocalFailure(message: error.toString());
    }
  }
}