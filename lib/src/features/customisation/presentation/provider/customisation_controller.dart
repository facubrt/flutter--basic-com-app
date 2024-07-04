import 'package:basiccom/src/features/customisation/application/services/customisation_service.dart';
import 'package:basiccom/src/features/customisation/data/data_sources/local/customisation_local_data_source.dart';
import 'package:basiccom/src/features/customisation/data/repositories/customisation_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'customisation_controller.g.dart';

@Riverpod(keepAlive: true)
class CustomisationController extends _$CustomisationController {
  final CustomisationService voiceService = CustomisationService(
    repository: CustomisationRepositoryImpl(
        customisationLocalDataSource: HiveCustomisationLocalDataSourceImpl()),
  );

  Future<void> build() async {
    final result = await voiceService.getAppParameters();
    result.fold(
      (f) => f,
      (r) => r,
    );
  }
}