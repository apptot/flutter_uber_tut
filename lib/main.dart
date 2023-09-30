import 'package:flutter/material.dart';
import 'package:flutterubertut/screen/WalkthroughScreen.dart';
import 'package:nb_utils/nb_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WalkthroughScreen(),
    );
  }
}
