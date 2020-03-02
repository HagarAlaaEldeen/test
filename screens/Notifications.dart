import 'package:google_fonts_arabic/fonts.dart';
import 'package:flutter/material.dart';
//import '../widgets/drawer.dart';

class Notifications extends StatefulWidget {

  static const routeName= '/Notifications' ;

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  bool _not1= false;
  bool _not2= false;
  
  Widget buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function updatedValue,
  )
   {
    return SwitchListTile(
      title: Text(
        title,
        style: TextStyle(
                 fontWeight: FontWeight.w600,
                 fontSize:24,
               ),),
      subtitle:Text(
        description,
        style: TextStyle(
                 fontWeight: FontWeight.w100,
                 fontSize:12,
                 color: Theme.of(context).primaryColor,
               ),
        //Theme.of(context).textTheme.title,
        ),
      value: currentValue,
      onChanged: updatedValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
              'الإشعارات',
              style: new TextStyle(
                fontFamily: ArabicFonts.Cairo,
                package: 'google_fonts_arabic',
                fontSize: 18.0,
              ),
            ),
      ),
      //drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'سيتم وصول الإشعارات عند التفعيل',
              //style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                buildSwitchListTile(
                  'العروض',
                  'عند وجود عروض أو رحلات مجانية',
                  _not1,
                  (newValue) {
                    setState(
                      () {
                        _not1=newValue;
                      },
                    );
                  },
                ),
                buildSwitchListTile(
                  'تتبع الرحلة',
                  'تتبع خطوات الرحلة',
                  _not2,
                  (newValue) {
                    setState(
                      () {
                        _not2=newValue;
                      },
                    );
                  },
                ),               
             ],
            ),
          ),
        ],
      ),
    );
  }
}
