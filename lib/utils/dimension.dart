import 'package:flutter/material.dart';

class Dimensions{
  static double screenHeight(BuildContext context) =>MediaQuery.of(context).size.height;
  static double screenWidth(BuildContext context) =>MediaQuery.of(context).size.width;

  // 843/250 = 
 static double himalaybgHeight(BuildContext context) =>screenHeight(context) / 3.37;
 // 843/64 = 
 static double profilePicHeight(BuildContext context) =>screenHeight(context) / 13.17;
  // 411.42/60 = 
 static double foodImageWidth(BuildContext context) =>screenWidth(context) / 6.85;
  
}