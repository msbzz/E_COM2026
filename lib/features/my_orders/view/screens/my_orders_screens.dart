import 'package:ecom_2026/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class MyOrdersScreens extends StatelessWidget {
  const MyOrdersScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Orders',
          style: AppTextStyle.withColor(
            AppTextStyle.h3,
            isDark ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
