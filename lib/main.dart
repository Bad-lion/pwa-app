import 'package:flutter/material.dart';
import 'package:pwa/screens/home_screens/home_page.dart';
import 'package:pwa/utils/theme.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.mainTheme,
      home: HomePage(),
    );
  }
}
