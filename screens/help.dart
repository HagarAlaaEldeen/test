import '../screens/Bookings.dart';
import '../screens/Guide.dart';
import '../screens/More.dart';
import '../screens/Payments.dart';
import 'package:google_fonts_arabic/fonts.dart';
import '../widgets/drawer.dart';
import 'package:flutter/material.dart';

class Help extends StatelessWidget {

  Widget buildListTile(String title, IconData icon, Function tapHandler){
    
    return ListTile(  
                leading: Icon(icon, size: 26, color: Colors.deepPurple),
                title: Text(
                  title,
                  style: new TextStyle(
                    fontFamily: ArabicFonts.Cairo,
                    package: 'google_fonts_arabic',
                    fontSize: 22.0,
                  ),
                ),
                onTap: tapHandler,
                trailing: Icon(Icons.arrow_right, size: 26, color: Colors.deepPurple),
              );
  }

  static const routeName= '/help' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
              'مساعدة',
              style: new TextStyle(
                fontFamily: ArabicFonts.Cairo,
                package: 'google_fonts_arabic',
                fontSize: 18.0,
              ),
            ),),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
            ),
          buildListTile(
            'المدفوعات والإيصالات',
            Icons.payment,
            (){
              Navigator.of(context).pushNamed(Payments.routeName);
            },
          ),
          buildListTile(
            'مشاويرك',
            Icons.gps_fixed,
            (){
              Navigator.of(context).pushNamed(Bookings.routeName);
            },
          ),
          buildListTile(
            'الإرشادات',
            Icons.live_help,
            (){
              Navigator.of(context).pushNamed(Guide.routeName);
            },
          ),
          buildListTile(
            'أخرى',
            Icons.info,
            (){
              Navigator.of(context).pushNamed(More.routeName);
            },
          ),
        ],
    ),
    );
  }
}