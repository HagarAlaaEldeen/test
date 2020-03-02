//import 'package:google_fonts_arabic/fonts.dart';
//import '../widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class More extends StatelessWidget {
  Widget buildListTile(String title){
    
    return ListTile(  
      title: Text(
        title,
        style: new TextStyle(
          fontFamily: ArabicFonts.Cairo,
          package: 'google_fonts_arabic',
          fontSize: 18.0,
        ),),       
      trailing: Icon(Icons.arrow_right, size: 26),
   );
  }

  static const routeName= '/More' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
              'أخرى', 
            ),),
      //drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
            ),
          buildListTile( 'توصيلات كلاكس'),
          buildListTile( ' رحلة خاصة'),
        ],
    ),
    );
  }
}