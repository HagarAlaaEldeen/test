//import 'package:google_fonts_arabic/fonts.dart';
//import '../widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class Guide extends StatelessWidget {
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

  static const routeName= '/Guide' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
              'الإرشادات',
            ),),
      //drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
            ),
          buildListTile( 'مكآفات كلاكس'),
          buildListTile( 'عن كلاكس'),
          buildListTile( 'كيف تتعامل مع السائق'),
          buildListTile( ' اخفاء المكالمات'),
          buildListTile( 'خيارات الدفع'),
          buildListTile( ' كيفية إدارة حسابي'), 
        ],
    ),
    );
  }
}