import 'package:flutter/material.dart';
import 'package:native_splash_video/pages/splash_page.dart';
import 'package:native_splash_video/resources/app_theme.dart';
import 'package:native_splash_video/utils/size_config.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizeConfiguration(
      builder: (_) => MaterialApp(
        title: 'Foodie',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light(),
        home: const SplashPage(),
      ),
    );
  }
}
