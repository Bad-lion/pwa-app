import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pwa/screens/bottom_controler.dart';
import 'package:pwa/utils/theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent));
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.mainTheme,
      home: BottomController(),
      // routes: {CategoryScreen.routname: (ctx) => CategoryScreen()},
    );
  }
}
