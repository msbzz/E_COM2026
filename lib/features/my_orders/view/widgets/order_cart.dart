import 'package:ecom_2026/features/my_orders/model/order.dart';
import 'package:ecom_2026/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';

class OrderCart extends StatelessWidget {
  final Order order;
  final VoidCallback onViewDetails;
  const OrderCart({
    super.key,
    required this.order,
    required this.onViewDetails,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: isDark
                ? Colors.black.withValues(alpha: 0.2)
                : Colors.grey.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(order.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order # ${order.orderNumber}',
                        style: AppTextStyle.withColor(
                          AppTextStyle.h3,
                          Theme.of(context).textTheme.bodyLarge!.color!,
                        ),
                      ),
                      const SizedBox(height: 4),

                      Text(
                        '${order.itemCount} items . \$${order.totalAmount.toStringAsFixed(2)}',
                        style: AppTextStyle.withColor(
                          AppTextStyle.bodyMedium,
                          isDark ? Colors.grey[400]! : Colors.grey[600]!,
                        ),
                      ),

                      const SizedBox(height: 8),

                      _buildStatusChip(context, order.statusString),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusChip(BuildContext context, String type) {
    Color getStatusColor() {
      switch (type) {
        case 'active':
          return Colors.blue;
        case 'completed':
          return Colors.green;
        case 'canceled':
          return Colors.red;
        default:
          return Colors.grey;
      }
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: getStatusColor().withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        type.capitalize!,
        style: AppTextStyle.withColor(AppTextStyle.bodySmall, getStatusColor()),
      ),
    );
  }
}
