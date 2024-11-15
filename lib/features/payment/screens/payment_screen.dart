import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('결제'),
      ),
      body: const Center(
        child: Text('결제 화면 구현 예정'),
      ),
    );
  }
} 