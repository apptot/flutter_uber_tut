import 'package:flutter/material.dart';
import 'package:flutterubertut/components/Widget.dart';
import 'package:flutterubertut/extensions/Colors.dart';
import 'package:flutterubertut/main.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: AppButton(
              color: jcbPrimaryColor,
              text: "show loader",
              onTap: () => {appStore.setLoading(true)},
            ),
          ),
          Observer(builder: (context) {
            return Visibility(
                visible: appStore.isLoading,
                child: Loading()
                    .onTap(() => {                     
                      appStore.setLoading(false)
                      }
                    )
                );
          })
        ],
      ),
    );
  }
}
