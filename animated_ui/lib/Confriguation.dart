import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Color primaryColor = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(
    color: Colors.grey[300],
    blurRadius: 30,
    offset: Offset(0, 10),
  ),
];

List<Map> categories=[
  {'name':'Cats','iconPath':'images/cat.png'},
  {'name':'Doges','iconPath':'images/dog.png'},
  {'name':'Bunnies','iconPath':'images/rabbit.png'},
  {'name':'Parrots','iconPath':'images/parrot.png'},
  {'name':'Horses','iconPath':'images/horse.png'},
];
