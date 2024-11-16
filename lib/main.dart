import 'package:flutter/material.dart';
import 'package:healthigo/config/theme.dart';
import 'package:healthigo/features/menu/screens/menu_detail_screen.dart';
import 'package:healthigo/features/home/models/popular_item.dart';
import 'config/routes.dart';

void main() {
  runApp(const HealthigoApp());
}

class HealthigoApp extends StatelessWidget {
  const HealthigoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthigo',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routes: routes,
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text('페이지를 찾을 수 없습니다'),
            ),
            body: const Center(
              child: Text('요청하신 페이지를 찾을 수 없습니다.'),
            ),
          ),
        );
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/menu_detail') {
          final args = settings.arguments as PopularItem;
          return MaterialPageRoute(
            builder: (context) => MenuDetailScreen(item: args),
          );
        }
        return null;
      },
    );
  }
}
