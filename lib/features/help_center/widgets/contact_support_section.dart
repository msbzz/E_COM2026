import 'package:ecom_2026/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class ContactSupportSection extends StatelessWidget {
  const ContactSupportSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(24),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Icon(
            Icons.headset_mic_outlined,
            color: Theme.of(context).primaryColor,
            size: 48,
          ),
          Text(
            'Still need help?',
            style: AppTextStyle.withColor(
              AppTextStyle.h3,
              isDark ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
