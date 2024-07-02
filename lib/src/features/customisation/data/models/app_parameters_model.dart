

import 'package:bicom/src/features/customisation/domain/entities/app_parameters.dart';

class AppParametersModel extends AppParameters {
  AppParametersModel(
      {required super.factorSize,
      required super.factorText,
      required super.cardStyle,
      required super.highContrast});

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
}
