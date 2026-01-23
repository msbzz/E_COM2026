enum OrderStatus { active, completed, canceled }

class Order {
  final String orderNumber;
  final int itemCount;
  final double totalAmount;
  final OrderStatus status;
  final String imageUrl;
  final DateTime orderData;

  Order({
    required this.orderNumber,
    required this.itemCount,
    required this.totalAmount,
    required this.status,
    required this.imageUrl,
    required this.orderData,
  });

  String get statusString => status.name;
}
