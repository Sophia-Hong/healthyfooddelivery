import 'package:flutter/material.dart';
import '../../../features/shared/widgets/app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HealthigoAppBar(
        title: '마이페이지',
        showBackButton: false,
      ),
      body: Center(
        child: Text('프로필 화면 구현 예정'),
      ),
    );
  }
} 