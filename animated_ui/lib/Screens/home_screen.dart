import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../confriguation.dart';
import '../confriguation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;// help to reduce the screen size
  bool isDrawerOpenOrClose = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      // to toggle your container that container shifted
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250), // best for any animation
      color: Colors.white,
      // column that the whole screen is a column
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isDrawerOpenOrClose
                    ? IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          setState(() {
                            xOffset=0;
                            yOffset=0;
                            scaleFactor=1;
                            isDrawerOpenOrClose=false;
                          });
                        },
                      )
                    : IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          setState(() {
                            xOffset = 230;
                            yOffset = 160;
                            scaleFactor =
                                0.6; // the screen convert 60 off its original value
                            isDrawerOpenOrClose = true;
                          });
                        },
                      ),
                Column(
                  children: [
                    Text("Location"),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: primaryColor,
                        ),
                        Text("Pakistan"),
                      ],
                    )
                  ],
                ),
                CircleAvatar(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
