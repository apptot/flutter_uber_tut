import 'package:flutter/material.dart';
import 'package:flutterubertut/extensions/Colors.dart';
import 'package:flutterubertut/screens/SplashScreen.dart';

import 'package:flutterubertut/store/AppStore.dart';
import 'package:nb_utils/nb_utils.dart';

AppStore appStore = AppStore();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialize();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: jcbPrimaryColor),
        useMaterial3: true,
      ),
    );
  }
}
