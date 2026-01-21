import 'package:ecom_2026/controllers/theme_controller.dart';
import 'package:ecom_2026/features/all_products_screen.dart';
import 'package:ecom_2026/features/cart_screen.dart';
import 'package:ecom_2026/features/notifications/view/notifcations_screen.dart';
import 'package:ecom_2026/features/widgets/category_chips.dart';
import 'package:ecom_2026/features/widgets/custom_search_bar.dart';
import 'package:ecom_2026/features/widgets/product_grid.dart';
import 'package:ecom_2026/features/widgets/sale_banner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  ),
                  SizedBox(height: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Marco',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        'Good Morning',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  // notification icon
                  IconButton(
                    onPressed: () => Get.to(() => NotifcationsScreen()),
                    icon: Icon(Icons.notifications_outlined),
                  ),
                  // car button
                  IconButton(
                    onPressed: () => Get.to(() => CartScreen()),
                    icon: Icon(Icons.shopping_bag_outlined),
                  ),
                  // theme button
                  GetBuilder<ThemeController>(
                    builder: (controller) => IconButton(
                      onPressed: () => controller.toggleTheme(),
                      icon: Icon(
                        controller.isDarkMode
                            ? Icons.light_mode
                            : Icons.dark_mode,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // search bar
            const CustomSearchBar(),

            // category chips
            const CategoryChips(),

            // sale banner
            const SaleBanner(),

            // popular product
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Product',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => const AllProductsScreen()),
                    child: Text(
                      'See All',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ],
              ),
            ),

            // product grid
            const Expanded(child: ProductGrid()),
          ],
        ),
      ),
    );
  }
}
