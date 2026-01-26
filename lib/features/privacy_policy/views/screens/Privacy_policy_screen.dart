import 'package:ecom_2026/features/privacy_policy/views/widgets/info_section.dart';
import 'package:ecom_2026/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: isDark ? Colors.white : Colors.black,
          ),
        ),
        title: Text(
          'Privacy Policy',
          style: AppTextStyle.withColor(
            AppTextStyle.h3,
            isDark ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(screenSize.width * 0.05),
          child: const Column(
            children: [
              InfoSection(
                title: 'Information We Collect',
                content:
                    'We collect information that you provide directly to us, including name, email address, and shipping information.',
              ),
              InfoSection(
                title: 'Information We Collect',
                content:
                    'We collect information that you provide directly to us, including name, email address, and shipping information.',
              ),
              InfoSection(
                title: 'How We Use Your Informatiom',
                content:
                    'We use the information we collect to provide , maintain, and improve our services. process your transactions, and send your updates.',
              ),
              InfoSection(
                title: 'Information Sharing',
                content:
                    'We collect information that you provide directly to us, including name, email address, and shipping information.',
              ),
              InfoSection(
                title: 'Your Rights',
                content:
                    'We collect information that you provide directly to us, including name, email address, and shipping information.',
              ),
              InfoSection(
                title: 'Coockies Policy',
                content:
                    'We collect information that you provide directly to us, including name, email address, and shipping information.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
