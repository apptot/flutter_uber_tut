import 'package:flutter/material.dart';
import 'package:flutterubertut/screens/WalkthroughScreen.dart';
import 'package:flutterubertut/screens/WelcomeScreen.dart';
import 'package:nb_utils/nb_utils.dart';

import 'package:flutterubertut/components/Widget.dart';
import 'package:flutterubertut/extensions/Colors.dart';
import 'package:flutterubertut/extensions/Styles.dart';
import 'package:flutterubertut/utils/Constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    setStatusBarColor(Colors.transparent);
    await 3.seconds.delay;
    finish(context);

    log(getBoolAsync(IS_FIRST_TIME, defaultValue: true));

    if (getBoolAsync(IS_FIRST_TIME, defaultValue: true)) {
      WalkthroughScreen().launch(context);
    } else {
      if (getBoolAsync(IS_LOGGED_IN)) {
        //goto Home
      } else {
        WelcomeScreen().launch(context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.height(),
        width: context.width(),
        color: jcbSecBackGroundColor,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Vertical_large,
                Image.asset(img_logo,
                    height: 100, width: 100, fit: BoxFit.cover),
                Vertical_small,
                Text(
                  "JUBER",
                  style: HeaderStyle(),
                )
              ],
            ),
            Positioned(
              bottom: 0,
              child: Image.asset(img_splash_background,
                  width: context.width(), fit: BoxFit.cover),
            ),
            Loading(),
          ],
        ),
      ),
    );
  }
}
