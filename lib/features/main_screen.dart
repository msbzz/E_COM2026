import 'package:ecom_2026/controllers/navigation_controller.dart';
import 'package:ecom_2026/controllers/theme_controller.dart';
import 'package:ecom_2026/features/account_screen.dart';
import 'package:ecom_2026/features/home_screen.dart';
import 'package:ecom_2026/features/shoping_screen.dart';
import 'package:ecom_2026/features/widgets/custom_bottom_navbar.dart';
import 'package:ecom_2026/features/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final NavigationController navigationController = Get.put(
    //  NavigationController(),
    //);

    final NavigationController navigationController =
        Get.find<NavigationController>();

    return GetBuilder<ThemeController>(
      builder: (themeController) => Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: Obx(
            () => IndexedStack(
              key: ValueKey(navigationController.currentIndex.value),
              index: navigationController.currentIndex.value,
              children: const [
                HomeScreen(),
                ShopingScreen(),
                WishlistScreen(),
                AccountScreen(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const CustomBottomNavbar(),
      ),
    );
  }
}
