import 'package:flutter/material.dart';
import '../features/home/screens/home_screen.dart';
import '../features/search/screens/search_screen.dart';
import '../features/product/screens/product_detail_screen.dart';
import '../features/cart/screens/cart_screen.dart';
import '../features/payment/screens/payment_screen.dart';
import '../features/order/screens/order_status_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String search = '/search';
  static const String productDetail = '/product';
  static const String cart = '/cart';
  static const String payment = '/payment';
  static const String orderStatus = '/order-status';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomeScreen(),
      search: (context) => const SearchScreen(),
      productDetail: (context) => const ProductDetailScreen(),
      cart: (context) => const CartScreen(),
      payment: (context) => const PaymentScreen(),
      orderStatus: (context) => const OrderStatusScreen(),
    };
  }
} 