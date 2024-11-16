import 'package:flutter/material.dart';
import '../../../features/shared/constants/app_colors.dart';
import '../../../features/shared/utils/format_utils.dart';
import '../../home/models/popular_item.dart';

class PaymentScreen extends StatefulWidget {
  final PopularItem item;
  final int quantity;

  const PaymentScreen({
    super.key,
    required this.item,
    required this.quantity,
  });

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String _selectedPaymentMethod = 'card';  // 기본값: 카드결제

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('결제하기'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 주문 정보 요약
                  _buildOrderSummary(),
                  const Divider(height: 1),
                  
                  // 배송지 정보
                  _buildDeliveryInfo(),
                  const Divider(height: 1),
                  
                  // 결제 수단 선택
                  _buildPaymentMethods(),
                ],
              ),
            ),
          ),
          
          // 하단 결제 버튼
          _buildPaymentButton(),
        ],
      ),
    );
  }

  Widget _buildOrderSummary() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '주문 정보',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              // 음식 이미지
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  widget.item.imageUrl,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              // 메뉴 정보
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.item.title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${formatPrice(widget.item.price)}원 · ${widget.quantity}개',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDeliveryInfo() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '배송지',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  // TODO: 배송지 변경
                },
                child: const Text('변경'),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            '서울시 강남구 테헤란로 123',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 4),
          Text(
            '캠프 제니스 빌딩 15층',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentMethods() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '결제 수단',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          // 결제 수단 라디오 버튼
          _buildPaymentMethodRadio(
            value: 'card',
            title: '카드결제',
            subtitle: '신용/체크카드',
          ),
          _buildPaymentMethodRadio(
            value: 'naverpay',
            title: '네이버페이',
            subtitle: '네이버페이로 결제',
          ),
          _buildPaymentMethodRadio(
            value: 'kakaopay',
            title: '카카오페이',
            subtitle: '카카오페이로 결제',
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentMethodRadio({
    required String value,
    required String title,
    required String subtitle,
  }) {
    return RadioListTile(
      value: value,
      groupValue: _selectedPaymentMethod,
      onChanged: (String? newValue) {
        if (newValue != null) {
          setState(() {
            _selectedPaymentMethod = newValue;
          });
        }
      },
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: AppColors.textSecondary,
        ),
      ),
      contentPadding: EdgeInsets.zero,
    );
  }

  Widget _buildPaymentButton() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Colors.grey.shade200,
            width: 1,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 최종 결제 금액
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '최종 결제 금액',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                '${formatPrice(widget.item.price * widget.quantity)}원',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF4CAF50),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // 결제하기 버튼
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // TODO: 결제 처리
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                backgroundColor: const Color(0xFF4CAF50),
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                '결제하기',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
} 