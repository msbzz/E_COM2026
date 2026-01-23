import 'package:ecom_2026/features/my_orders/model/order.dart';
import 'package:ecom_2026/features/my_orders/repository/order_repository.dart';
import 'package:ecom_2026/features/my_orders/view/widgets/order_cart.dart';
import 'package:ecom_2026/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrdersScreens extends StatelessWidget {
  final OrderRepository _repository = OrderRepository();
  MyOrdersScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back_ios),
            color: isDark ? Colors.white : Colors.black,
          ),
          title: Text(
            'My Orders',
            style: AppTextStyle.withColor(
              AppTextStyle.h3,
              isDark ? Colors.white : Colors.black,
            ),
          ),
          bottom: TabBar(
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: isDark ? Colors.grey[400] : Colors.grey[600],
            indicatorColor: Theme.of(context).primaryColor,
            tabs: const [
              Tab(text: 'Active'),
              Tab(text: 'Completed'),
              Tab(text: 'Canceled'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _builderOrderList(context, OrderStatus.active),
            _builderOrderList(context, OrderStatus.completed),
            _builderOrderList(context, OrderStatus.canceled),
          ],
        ),
      ),
    );
  }

  Widget _builderOrderList(BuildContext context, OrderStatus status) {
    final orders = _repository.getOrdersByStatus(status);
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: orders.length,
      itemBuilder: (context, index) =>
          OrderCart(order: orders[index], onViewDetails: () {}),
    );
  }
}
