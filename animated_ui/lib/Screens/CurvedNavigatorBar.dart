import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'DrawerScreen.dart';
import 'HomeScreen.dart';

class CurvesNavigatorBar extends StatefulWidget {
  const CurvesNavigatorBar({Key key}) : super(key: key);

  @override
  _CurvesNavigatorBarState createState() => _CurvesNavigatorBarState();
}

class _CurvesNavigatorBarState extends State<CurvesNavigatorBar> {
  @override
  Widget build(BuildContext context) {
    int _page = 0;
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        height: 75.0,
        animationDuration: Duration(milliseconds: 400),
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.red,
        child: Center(
          child: Column(
            children: <Widget>[
            ],
          ),
        ),
      ),
    );
  }
}
