
import 'package:flutter/material.dart';
import 'services/stormglass_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'طقس الصياد',
      home: Scaffold(
        appBar: AppBar(title: const Text('طقس الصياد')),
        body: const Center(child: Text('مرحبًا بك في تطبيق طقس الصياد')),
      ),
    );
  }
}
