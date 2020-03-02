import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class NewTrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: (Text(
              'رحلة جديدة',
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