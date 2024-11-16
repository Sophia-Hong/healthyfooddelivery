import 'package:flutter/material.dart';
import 'package:healthigo/config/theme.dart';
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
      onGenerateRoute: AppRoutes.generateRoute,
      routes: AppRoutes.getRoutes(),
    );
  }
}
