
import 'package:flutter/material.dart';

double getHeight(BuildContext context, double height){
  return height / 896 * MediaQuery.of(context).size.height;
}

double getWidth(BuildContext context, double width){
  return width / 414 * MediaQuery.of(context).size.width;
}

