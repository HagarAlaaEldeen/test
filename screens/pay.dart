import 'package:google_fonts_arabic/fonts.dart';
import '../widgets/drawer.dart';
import 'package:flutter/material.dart';

class Pay extends StatelessWidget {

  static const routeName= '/pay' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
              'الدفع',
              style: new TextStyle(
                fontFamily: ArabicFonts.Cairo,
                package: 'google_fonts_arabic',
                fontSize: 18.0,
              ),
            ),),
      drawer: MainDrawer(),
      body: Center(
        child: Text('الدفع'),
      ),
    );
  }
}