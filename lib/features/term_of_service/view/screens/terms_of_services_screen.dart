import 'package:ecom_2026/features/privacy_policy/views/widgets/info_section.dart';
import 'package:ecom_2026/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class TermsOfServicesScreen extends StatelessWidget {
  const TermsOfServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Terms of Service',
          style: AppTextStyle.withColor(
            AppTextStyle.h3,
            isDark ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(screenSize.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoSection(
                title: 'Welcome to Fashion Store',
                content:
                    'By accessing and using this application, you accespt and agree to be bound terms and provision of this agreement.',
              ),
              InfoSection(
                title: 'Account Registration',
                content:
                    'By accessing and using this application, you accespt and agree to be bound terms and provision of this agreement.',
              ),
              InfoSection(
                title: 'User Responsibilities',
                content:
                    'By accessing and using this application, you accespt and agree to be bound terms and provision of this agreement.',
              ),
              InfoSection(
                title: 'Privace Policy',
                content:
                    'By accessing and using this application, you accespt and agree to be bound terms and provision of this agreement.',
              ),
              InfoSection(
                title: 'Intellectual Property',
                content:
                    'By accessing and using this application, you accespt and agree to be bound terms and provision of this agreement.',
              ),
              InfoSection(
                title: 'Termination',
                content:
                    'By accessing and using this application, you accespt and agree to be bound terms and provision of this agreement.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
