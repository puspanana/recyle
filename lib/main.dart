import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:recyle/artikel2.dart';
import 'package:recyle/artikel3.dart';
import 'package:recyle/home.dart';
import 'package:recyle/listsetoran.dart';
import 'package:recyle/artikel1.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/listsetoran': (context) => const Listsetoran(),
        '/artikel1': (context) => const Artikel1(),
        '/artikel2': (context) => const Artikel2(),
        '/artikel3': (context) => const Artikel3(),
      },
    );
  }
}
