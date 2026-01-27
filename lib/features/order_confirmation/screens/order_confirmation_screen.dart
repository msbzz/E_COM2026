import 'package:ecom_2026/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OrderConfirmationScreen extends StatelessWidget {
  final String orderNumber;
  final double totalAmount;

  const OrderConfirmationScreen({
    super.key,
    required this.orderNumber,
    required this.totalAmount,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(title: Text('Order Confirmarion Screen')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Lottie.asset(
                'assets/animations/order_success.json',
                width: 200,
                height: 200,
                repeat: false,
              ),
              const SizedBox(height: 32),
              Text(
                'Order Confirmed',
                textAlign: TextAlign.center,
                style: AppTextStyle.withColor(
                  AppTextStyle.h2,
                  isDark ? Colors.white : Colors.black,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Your order #$orderNumber has been successfully placed',
                textAlign: TextAlign.center,
                style: AppTextStyle.withColor(
                  AppTextStyle.bodyLarge,
                  isDark ? Colors.grey[400]! : Colors.grey[600]!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
