import 'package:ecom_2026/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shipping Address',
          style: AppTextStyle.withColor(
            AppTextStyle.h3,
            isDark ? Colors.grey[400]! : Colors.grey[600]!,
          ),
        ),
      ),
    );
  }
}
