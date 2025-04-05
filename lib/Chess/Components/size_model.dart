import 'package:flutter/material.dart';

double getHeight(BuildContext context, double height){
  return height / 915 * MediaQuery.of(context).size.height;
}

double getWidth(BuildContext context, double width){
  return width / 412 * MediaQuery.of(context).size.width;
}