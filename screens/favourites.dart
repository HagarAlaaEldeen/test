import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class Favourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: (Text(
              'رحلاتك المفضلة',
              style: new TextStyle(
                fontFamily: ArabicFonts.Cairo,
                package: 'google_fonts_arabic',
                fontSize: 18.0,
              ),
            )
            ),
    );
    }
}