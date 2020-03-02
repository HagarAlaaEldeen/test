import 'package:google_fonts_arabic/fonts.dart';
import '../widgets/drawer.dart';
import 'package:flutter/material.dart';

class FreeRides extends StatelessWidget {

  static const routeName= '/freeRides' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
              'الرحلات المجانية',
              style: new TextStyle(
                fontFamily: ArabicFonts.Cairo,
                package: 'google_fonts_arabic',
                fontSize: 18.0,
              ),
            ),
      ),
      drawer: MainDrawer(),
      body: Center(
       child: Card(
         elevation: 7,
         child: Container(
           padding: EdgeInsets.all(10),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.end,
             children: <Widget>[
               TextField(
                 decoration: InputDecoration(
                   labelText:'ادخل البروموكود',
                   ),
                ),
                FlatButton(
                  child: Text('يلا كلاكس'),
                  textColor: Colors.purple,
                  onPressed: (){},
                  ),
            
             ],),
         ),)
      ),
    );
  }
}