class Product {
  final String name;
  final String category;
  final double price;
  final double? oldPrice;
  final String imageUrl;
  final bool isFavorite;
  final String description;

  const Product({
    required this.category,
    required this.description,
    required this.imageUrl,
    required this.name,
    required this.price,
    this.oldPrice,
    this.isFavorite = false,
  });
}

final List<Product> products = [
  const Product(
    name: 'Shoes',
    category: 'Footwear',
    price: 69.90,
    oldPrice: 189.90,
    imageUrl: 'assets/images/shoe.jpg',
    description: 'Comfortable and stylish shoes for everyday use.',
  ),
  const Product(
    name: 'T-Shirt',
    category: 'Clothing',
    price: 39.90,
    oldPrice: 79.90,
    isFavorite: true,
    imageUrl: 'assets/images/t_shirt.png',
    description: 'Cotton t-shirt with modern fit and high durability.',
  ),
  const Product(
    name: 'Jeans',
    category: 'Clothing',
    price: 199.90,
    oldPrice: 199.90,
    imageUrl: 'assets/images/jeans.png',
    description: 'Slim fit jeans made with stretch fabric for comfort.',
  ),
  const Product(
    name: 'Backpack',
    category: 'Accessories',
    price: 89.90,
    oldPrice: 149.90,
    imageUrl: 'assets/images/back_pack.png',
    description: 'Durable backpack ideal for work, travel, or study.',
  ),
  const Product(
    name: 'Smart Watch',
    category: 'Electronics',
    price: 249.90,
    oldPrice: 399.90,
    isFavorite: true,
    imageUrl: 'assets/images/smart_watch.png',
    description: 'Smart watch with health monitoring and notifications.',
  ),
];
