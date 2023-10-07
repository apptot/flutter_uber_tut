import 'package:flutter/material.dart';
import 'package:flutterubertut/screens/SplashScreen.dart';

import 'package:flutterubertut/store/AppStore.dart';

AppStore appStore = AppStore();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
