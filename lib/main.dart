import 'package:flutter/material.dart';
import 'package:healthigo/config/theme.dart';
import 'package:healthigo/features/home/screens/home_screen.dart';

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
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
