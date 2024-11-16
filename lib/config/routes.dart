import 'package:flutter/material.dart';
import 'package:healthigo/core/screens/main_screen.dart';
import 'package:healthigo/features/home/screens/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (BuildContext context) => const MainScreen(),
  '/home': (BuildContext context) => const HomeScreen(),
}; 