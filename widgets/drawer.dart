import 'package:claxy/screens/pay.dart';
import 'package:google_fonts_arabic/fonts.dart';
import '../screens/your_rides.dart';
import '../screens/free_rides.dart';
import '../screens/help.dart';
import '../screens/settings.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {

  Widget buildListTile(String title, IconData icon, Function tapHandler){
    
    return ListTile(  
              leading: Icon(icon, size: 26, color: Colors.deepPurpleAccent),
              title: Text(
                title,
                style: new TextStyle(
                  fontFamily: ArabicFonts.Cairo,
                  package: 'google_fonts_arabic',
                  fontSize: 18.0,
                ),
              ),
              onTap: tapHandler,
            );
  }
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height:170,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerRight,
            color: Theme.of(context).primaryColorDark,
            child: Text(
              'كلاكس',
              style: new TextStyle(
                fontFamily: ArabicFonts.Cairo,
                package: 'google_fonts_arabic',
                fontSize: 28.0,
              ),
            ),
          ),
          SizedBox(
            height: 20,
            ),
          buildListTile(
            'كلاكس',
            Icons.local_taxi,
            (){
              Navigator.of(context).pushNamed('/');
            },
          ),
          buildListTile(
            'رحلاتك',
            Icons.calendar_today,
            (){
              Navigator.of(context).pushNamed(YourRides.routeName);
            },
          ),
          buildListTile(
            'الرحلات المجانية', 
            Icons.card_giftcard,
            (){
              Navigator.of(context).pushNamed(FreeRides.routeName);
            },
          ),
          buildListTile(
            'الدفع',
            Icons.attach_money,
            (){
              Navigator.of(context).pushNamed(Pay.routeName);
            },
          ),
          buildListTile(
            'الإعدادات',
            Icons.settings,
            (){
              Navigator.of(context).pushNamed(Settings.routeName);
            },
          ),
          buildListTile(
            'مساعدة',
            Icons.help,
            (){
              Navigator.of(context).pushNamed(Help.routeName);
            },
          ), 
        ],
    ),
    );
  }
}