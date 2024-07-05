import 'package:basiccom/src/customisation/application/services/customisation_service.dart';
import 'package:basiccom/src/customisation/domain/entities/app_parameters.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'customisation_controller.g.dart';



@Riverpod(keepAlive: true)
class CustomisationController extends _$CustomisationController {
  final CustomisationService customisationService = CustomisationService();
  
  @override
  AppParameters build() => CustomisationService().appParameters;

  Future<AppParameters> getAppParameters() async {
    return customisationService.getAppParameters();
  }

  Future<bool> setHighContrast({required bool highContrast}) async {
    final AppParameters parameters = AppParameters(
      highContrast: highContrast,
      factorSize: state.factorSize,
      factorText: state.factorText,
      cardStyle: state.cardStyle,
      );
    state = parameters;
    return customisationService.setAppParameters(parameters);
  }

  Future<bool> setCardStyle({required String cardStyle}) async {
    final AppParameters parameters = AppParameters(
      highContrast: state.highContrast,
      factorSize: state.factorSize,
      factorText: state.factorText,
      cardStyle: cardStyle,
      );
    state = parameters;
    return customisationService.setAppParameters(parameters);
  }

  Future<bool> setFactorText({required String factorText}) async {
    final AppParameters parameters = AppParameters(
      highContrast: state.highContrast,
      factorSize: state.factorSize,
      factorText: factorText,
      cardStyle: state.cardStyle,
      );
    state = parameters;
    return customisationService.setAppParameters(parameters);
  }

  Future<bool> setAppParameters(AppParameters parameters) async {
    return customisationService.setAppParameters(parameters);
  }

  Future<bool> clearAppParameters() async {
    return customisationService.clearAppParameters();
  }
}