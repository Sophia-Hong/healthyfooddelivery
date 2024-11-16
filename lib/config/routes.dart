import 'package:flutter/material.dart';
import 'package:healthigo/core/screens/main_screen.dart';
import 'package:healthigo/features/home/screens/home_screen.dart';
import 'package:healthigo/features/menu/screens/menu_detail_screen.dart';
import 'package:healthigo/features/home/models/popular_item.dart';
import 'package:healthigo/features/payment/screens/payment_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (BuildContext context) => const MainScreen(),
  '/home': (BuildContext context) => const HomeScreen(),
  '/menu_detail': (BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PopularItem;
    return MenuDetailScreen(item: args);
  },
  '/payment': (BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return PaymentScreen(
      item: args['item'] as PopularItem,
      quantity: args['quantity'] as int,
    );
  },
}; 