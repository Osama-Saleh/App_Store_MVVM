import 'package:flutter/material.dart';
import './utils/import-path/app_import_path.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'AppStore',
      debugShowCheckedModeBanner: false,
      home: PageSplash() ,
    );
  }
}

