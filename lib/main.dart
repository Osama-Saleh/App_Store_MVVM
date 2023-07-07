import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './utils/import-path/app_import_path.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: const PageSplash(),
      builder: (context, child) {
        return MaterialApp(
          title: 'AppStore',
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
    );
  }
}
