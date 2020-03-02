import 'package:google_fonts_arabic/fonts.dart';
import '../widgets/drawer.dart';
import './scheduled.dart';
import './history.dart';
import 'package:flutter/material.dart';

class Rides extends StatefulWidget {
  @override
  _RidesState createState() => _RidesState();
}

class _RidesState extends State<Rides> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'رحلاتك',
            style: new TextStyle(
                fontFamily: ArabicFonts.Cairo,
                package: 'google_fonts_arabic',
                fontSize: 25.0,
              ),
            ),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.directions_bus,
                ),
              text: 'القادمة',
              ),
            Tab(
              icon: Icon(
                Icons.history,
                ),
              text: 'السابقة',
            ),
          ],
        ),
      ),
      drawer: MainDrawer(),
      body: TabBarView(children: <Widget>[
        Scheduled(),
        History(),
      ],),
    ),
    );
  }
}