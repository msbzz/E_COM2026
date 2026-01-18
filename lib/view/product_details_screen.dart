import 'package:ecom_2026/models/product.dart';
import 'package:ecom_2026/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: isDark ? Colors.white : Colors.black,
          ),
        ),
        title: Text(
          'Details',
          style: AppTextStyle.withColor(
            AppTextStyle.h3,
            isDark ? Colors.white : Colors.black,
          ),
        ),
        actions: [
          // share button
          IconButton(
            onPressed: () =>
                _shareProduct(context, product.name, product.description),
            icon: Icon(
              Icons.share,
              color: isDark ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.asset(
                    product.imageUrl,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //share product

  Future<void> _shareProduct(
    BuildContext context,
    String productName,
    String description,
  ) async {
    //get the render box for share position origin (required for iPad)

    final box = context.findRenderObject() as RenderBox?;

    const String shopLink = 'https:// yourshop.com/product/cotton-tshirt';
    final String shareMessage = '$description\n\nShop now at $shopLink';
    try {
      await Share.share(
        shareMessage,
        subject: productName,
        sharePositionOrigin: box == null
            ? null
            : box.localToGlobal(Offset.zero) & box.size,
      );
    } catch (e) {
      debugPrint('Erro ao compartilhar: $e');
    }
  }
}
