import 'package:basiccom/src/features/voice/presentation/views/pages/home_page.dart';
import 'package:flutter/material.dart';

class BasicCOM extends StatelessWidget {
  const BasicCOM({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic COM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
