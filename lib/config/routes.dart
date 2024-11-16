import 'package:flutter/material.dart';
import 'package:healthigo/core/screens/main_screen.dart';
import 'package:healthigo/features/home/screens/home_screen.dart';
import 'package:healthigo/features/menu/screens/menu_detail_screen.dart';
import 'package:healthigo/features/home/models/popular_item.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (BuildContext context) => const MainScreen(),
  '/home': (BuildContext context) => const HomeScreen(),
  '/menu_detail': (BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PopularItem;
    return MenuDetailScreen(item: args);
  },
}; 