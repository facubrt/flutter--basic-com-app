import 'package:bicom/src/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  // Bloqueo de orientacion para pantallas chicas
  //await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  //if(getDeviceType() == 'phone'){
  //  SystemChrome.setPreferredOrientations([
  //     DeviceOrientation. portraitUp,
  //  ]);
  //      }
  // statusbar transparente
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  final prefs = UserPreferences();
  await prefs.initPrefs();
  runApp(
    const ProviderScope(
      child: BiCOM(),
    ),
  );
}
