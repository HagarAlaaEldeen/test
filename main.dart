//import 'package:flutter_localizations/flutter_localizations.dart';
import 'dart:ui';
import 'package:claxy/providers/profiles.dart';
import 'package:provider/provider.dart';

import './screens/Account.dart';
import 'package:flutter/material.dart';
  import 'screens/Bookings.dart';
import 'screens/Family.dart';
import 'screens/Guide.dart';
import 'screens/More.dart';
import 'screens/Notifications.dart';
import 'screens/Payments.dart';
import 'screens/Safety.dart';
import './config.dart' as application;
import 'screens/Signout.dart';
import 'screens/free_rides.dart';
import 'screens/help.dart';
import './screens/bottom_tab.dart';
import 'screens/new_trip.dart';
import 'screens/pay.dart';
import 'screens/rides_tabs.dart';
import 'screens/settings.dart';
import 'screens/yourAcc.dart';
import 'screens/your_rides.dart';

void main() => runApp(Clax());

class Clax extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider.value(
          value: Profiles(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: child,
          );
        },
        title: 'كلاكس',
        localizationsDelegates: application.localization,
        supportedLocales: application.languages,
        locale: application.local, // OR Locale('ar', 'AE') OR Other RTL locales,
        theme: ThemeData(
            brightness: Brightness.light,
            scaffoldBackgroundColor: Color(0xfff6f6f6),
            dividerColor: Color(0xffe2e2e2),
            // primarySwatch: Colors.purple,
            // primaryColor: Colors.green,
            primaryColor: Color(0xff4e37b2),
            accentColor: Colors.amber,
            backgroundColor: Colors.white,
            secondaryHeaderColor: Colors.grey,
            primaryColorDark: Colors.deepPurple,
            canvasColor: Colors.white,
            fontFamily: 'Cairo',
            textTheme: TextTheme(
              button: TextStyle(
                  color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w600),
              title: TextStyle(
                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
              caption: TextStyle(color: Color(0xfff6f6f6), fontSize: 14),
              display1: TextStyle(fontWeight: FontWeight.w800),
              display2: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              body1: TextStyle(
                  color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w600),
              display3: TextStyle(
                  fontWeight: FontWeight.bold, fontFamily: 'Product Sans'),
              display4: TextStyle(fontFamily: 'Product Sans'),
              body2: TextStyle(
                  color: Colors.grey, fontFamily: 'Product Sans', fontSize: 14),
            ),
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.all(0),
            )),
            //home: NewTrip(),
        initialRoute: '/',
        routes: {
          '/': (ctx) => Tabs(),
          YourRides.routeName: (ctx) => Rides(),
          Settings.routeName: (ctx) => Settings(),
          Help.routeName: (ctx) => Help(),
          Pay.routeName: (ctx) => Pay(),
          FreeRides.routeName: (ctx) => FreeRides(),
          Account.routeName: (ctx) => Account(),
          Safety.routeName: (ctx) => Safety(),
          Family.routeName: (ctx) => Family(),
          Notifications.routeName: (ctx) => Notifications(),
          Signout.routeName: (ctx) => Signout(),
          Payments.routeName: (ctx) => Payments(),
          Bookings.routeName: (ctx) => Bookings(),
          Guide.routeName: (ctx) => Guide(),
          More.routeName: (ctx) => More(),
          YourAccount.routeName: (ctx) => YourAccount(),
        },
        // onGenerateRoute: (settings){
        //   print (settings.arguments);
        //   //return MaterialPageRoute(builder: (ctx) => Categories());
        // },
        onUnknownRoute: (settings){
          print (settings.arguments);
          return MaterialPageRoute(builder: (ctx) => NewTrip());
        },
      ),
    );
  }
}

