

import 'package:basiccom/src/features/customisation/domain/entities/app_parameters.dart';

class AppParametersModel extends AppParameters {
  AppParametersModel(
      {required super.factorSize,
      required super.factorText,
      required super.cardStyle,
      required super.highContrast});
  
  static AppParametersModel empty = AppParametersModel(
    factorSize: 1.0,
    factorText: '',
    cardStyle: '',
    highContrast: false,
  );

  AppParametersModel copyWith({
    double? factorSize,
    String? factorText,
    String? cardStyle,
    bool? highContrast,
  }) => AppParametersModel(
        factorSize: factorSize ?? this.factorSize,
        factorText: factorText ?? this.factorText,
        cardStyle: cardStyle ?? this.cardStyle,
        highContrast: highContrast ?? this.highContrast);


  Map<String, dynamic> toJson() => {
        'factorSize': factorSize,
        'factorText': factorText,
        'cardStyle': cardStyle,
        'highContrast': highContrast,
      };
  
  factory AppParametersModel.fromJson(Map<String, dynamic> json) => AppParametersModel(
    factorSize: json['factorSize'],
    factorText: json['factorText'],
    cardStyle: json['cardStyle'],
    highContrast: json['highContrast'],
  );

  factory AppParametersModel.fromEntity(AppParameters entity) => AppParametersModel(
    factorSize: entity.factorSize,
    factorText: entity.factorText,
    cardStyle: entity.cardStyle,
    highContrast: entity.highContrast,
  );
}
