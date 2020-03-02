import 'package:claxy/screens/yourAcc.dart';
//import '../screens/Account.dart';
import '../screens/Family.dart';
import '../screens/Notifications.dart';
import '../screens/Safety.dart';
import '../screens/Signout.dart';
import '../widgets/drawer.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {

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
            );
  }

  static const routeName= '/settings' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
              'الإعدادات',
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
            'الحساب',
            Icons.person_pin,
            (){
              Navigator.of(context).pushNamed(YourAccount.routeName);
            },
          ),
          buildListTile(
            'الأمان',
            Icons.security,
            (){
              Navigator.of(context).pushNamed(Safety.routeName);
            },
          ),
          buildListTile(
            'العائلة',
            Icons.person_add,
            (){
              Navigator.of(context).pushNamed(Family.routeName);
            },
          ),
          buildListTile(
            'الإشعارات',
            Icons.notifications,
            (){
              Navigator.of(context).pushNamed(Notifications.routeName);
            },
          ),
          buildListTile(
            'تسجيل خروج',
            Icons.power_settings_new,
            (){
              Navigator.of(context).pushReplacementNamed(Signout.routeName);
            },
          ),
          // buildListTile(
          //   'حسابك',
          //   Icons.person_outline,
          //   (){
          //     Navigator.of(context).pushReplacementNamed(YourAccount.routeName);
          //   },
          // ),
        ],
    ),
    );
  }
}