import 'package:bicom/src/features/communication/presentation/views/pages/home_page.dart';
import 'package:flutter/material.dart';

class BiCOM extends StatelessWidget {
  const BiCOM({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BiCOM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
