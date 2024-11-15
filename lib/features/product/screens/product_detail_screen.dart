import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('상품 상세'),
      ),
      body: const Center(
        child: Text('상품 상세 화면 구현 예정'),
      ),
    );
  }
} 