import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:wikipedia_reader/app_routhing.dart';

void main() {
  Hive.initFlutter();
  
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router);
  }
}
