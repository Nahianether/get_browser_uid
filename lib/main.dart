import 'package:fingerprintjs/fingerprintjs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              getBrowserId();
            },
            child: const Text('Click Me'),
          ),
        ),
      ),
    );
  }
}

void getBrowserId() async {
  String fingerprint = await Fingerprint.getHash();
  debugPrint('fingerprint: $fingerprint');
}
