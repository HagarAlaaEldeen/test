//import 'package:google_fonts_arabic/fonts.dart';
//import '../widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class Payments extends StatelessWidget {

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

  static const routeName= '/Payments' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
              'المدفوعات والإيصالات',
            ),),
      //drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
            ),
          buildListTile( 'طلب المساعدة بشأن البطاقة الائتمانية'),
          buildListTile( ' الإلغاء'),
          buildListTile( ' التعرفة الأولية'),
          buildListTile( 'محفظة كلاكس'),
          buildListTile( ' خيارات الدفع'),
          buildListTile( ' البروموكود'),
          
        ],
    ),
    );
  }
}