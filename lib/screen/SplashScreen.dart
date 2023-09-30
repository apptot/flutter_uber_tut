import 'package:flutter/material.dart';
import 'package:flutterubertut/extensions/Styles.dart';
import 'package:flutterubertut/extensions/Widget.dart';
import 'package:flutterubertut/screen/WalkthroughScreen.dart';
import 'package:flutterubertut/utils/Colors.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:styled_widget/styled_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  Future<void> init() async {
    setStatusBarColor(Colors.transparent);
    await 3.seconds.delay;
    finish(context);
    WalkthroughScreen().launch(context);
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
                Image.asset('images/juberCarBooking/juber_app_icon.png',
                    height: 100, width: 100, fit: BoxFit.cover),
                Vertical_small,
                Text("JUBER", style: HeaderStyle(),)
              ],
            ),
            Positioned(
              bottom: 0,
              child: Image.asset(
                  'images/juberCarBooking/jcb_splash_background_image.png',
                  width: context.width(),
                  fit: BoxFit.cover),
            ),
            Center(child: Loading()),
          ],
        ),
      ),
    );
  }
}
