class Product {
  final String id;
  final String name;
  final String category;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  static List<Product> sampleProducts = [
    Product(
      id: 'h1',
      name: '倉鼠木屑',
      category: '倉鼠',
      description: '天然木屑，適合倉鼠墊料，吸水除臭。',
      price: 120,
      imageUrl:
          'https://images.unsplash.com/photo-1518717758536-85ae29035b6d?auto=format&fit=crop&w=400&q=80',
    ),
    Product(
      id: 'r1',
      name: '兔子乾草',
      category: '兔子',
      description: '新鮮提摩西草，兔子主食。',
      price: 180,
      imageUrl:
          'https://images.unsplash.com/photo-1465101046530-73398c7f28ca?auto=format&fit=crop&w=400&q=80',
    ),
    Product(
      id: 'hh1',
      name: '刺蝟飼料',
      category: '刺蝟',
      description: '高蛋白刺蝟專用飼料。',
      price: 150,
      imageUrl:
          'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=400&q=80',
    ),
    Product(
      id: 'gp1',
      name: '天竺鼠浴沙',
      category: '天竺鼠',
      description: '細緻浴沙，適合天竺鼠清潔。',
      price: 100,
      imageUrl:
          'https://images.unsplash.com/photo-1518717758536-85ae29035b6d?auto=format&fit=crop&w=400&q=80',
    ),
    Product(
      id: 'h2',
      name: '倉鼠滾輪',
      category: '倉鼠',
      description: '靜音滾輪，讓倉鼠盡情奔跑。',
      price: 250,
      imageUrl:
          'https://images.unsplash.com/photo-1465101046530-73398c7f28ca?auto=format&fit=crop&w=400&q=80',
    ),
    Product(
      id: 'r2',
      name: '兔子水壺',
      category: '兔子',
      description: '防漏水壺，兔子專用。',
      price: 90,
      imageUrl:
          'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=400&q=80',
    ),
  ];
}
