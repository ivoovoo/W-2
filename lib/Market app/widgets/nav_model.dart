import 'package:flutter/cupertino.dart';

class NavModelMarket {
  final Widget page;
  final GlobalKey<NavigatorState> navKey;

  NavModelMarket({
    required this.navKey,
    required this.page,
  });
}