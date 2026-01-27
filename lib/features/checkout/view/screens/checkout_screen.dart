import 'package:ecom_2026/features/checkout/widgets/address_card.dart';
import 'package:ecom_2026/features/checkout/widgets/checkout_bottom_bar.dart';
import 'package:ecom_2026/features/checkout/widgets/order_summary_card.dart';
import 'package:ecom_2026/features/checkout/widgets/payment_method_card.dart';
import 'package:ecom_2026/features/order_confirmation/screens/order_confirmation_screen.dart';
import 'package:ecom_2026/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: isDark ? Colors.white : Colors.black,
          ),
        ),
        title: Text(
          'Check',
          style: AppTextStyle.withColor(
            AppTextStyle.h3,
            isDark ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle(context, 'Shipping Address'),
            const SizedBox(height: 16),
            AddressCard(),
            const SizedBox(height: 24),
            _buildSectionTitle(context, 'Payment Method'),
            const SizedBox(height: 16),
            const PaymentMethodCard(),
            const SizedBox(height: 24),
            _buildSectionTitle(context, 'Order Sumamary'),
            const SizedBox(height: 16),
            OrderSummaryCard(),
          ],
        ),
      ),
      bottomNavigationBar: CheckoutBottomBar(
        totalAmount: 712.50,
        onPlaceOrder: () {
          // generate a random order number(in real app, this would comee from backend)
          final orderNumber =
              'ORD${DateTime.now().millisecondsSinceEpoch.toString().substring(7)}';
          Get.to(
            () => OrderConfirmationScreen(
              orderNumber: orderNumber,
              totalAmount: 712.50,
            ),
          );
        },
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Text(
      title,
      style: AppTextStyle.withColor(
        AppTextStyle.h3,
        isDark ? Colors.white : Colors.black,
      ),
    );
  }
}
