import 'package:ecom_2026/features/my_orders/model/order.dart';

class OrderRepository {
  List<Order> getOrder() {
    return [
      Order(
        orderNumber: '12345',
        itemCount: 2,
        totalAmount: 2938.3,
        status: OrderStatus.active,
        imageUrl: 'assets/images/laptop.jpg',
        orderData: DateTime.now().subtract(const Duration(hours: 2)),
      ),

      Order(
        orderNumber: '12346',
        itemCount: 1,
        totalAmount: 159.90,
        status: OrderStatus.completed,
        imageUrl: 'assets/images/shoe.jpg',
        orderData: DateTime.now().subtract(const Duration(days: 1)),
      ),

      Order(
        orderNumber: '12347',
        itemCount: 3,
        totalAmount: 899.99,
        status: OrderStatus.canceled,
        imageUrl: 'assets/images/smart_watch.png',
        orderData: DateTime.now().subtract(const Duration(days: 3)),
      ),

      Order(
        orderNumber: '12348',
        itemCount: 4,
        totalAmount: 249.50,
        status: OrderStatus.active,
        imageUrl: 'assets/images/t_shirt.png',
        orderData: DateTime.now().subtract(const Duration(minutes: 45)),
      ),
    ];
  }

  List<Order> getOrdersByStatus(OrderStatus status) {
    return getOrder().where((order) => order.status == status).toList();
  }
}
