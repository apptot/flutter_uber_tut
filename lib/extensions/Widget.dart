import 'package:flutter/cupertino.dart';
import 'package:flutterubertut/extensions/Colors.dart';
import 'package:nb_utils/nb_utils.dart';

Widget Vertical_large = 60.height;
Widget Vertical_medium = 40.height;
Widget Vertical_small = 16.height;

Widget Loading(){
  return  Center(
    child: Image.asset('images/juberCarBooking/jcbGifs/jcb_loader.gif',
        color: jcbDarkColor, width: 50, height: 50),
  );
}