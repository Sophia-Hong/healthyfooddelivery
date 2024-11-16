class RecommendedItem {
  final String id;
  final String title;
  final String subtitle;
  final String imageUrl;
  final List<String> badges;
  final double rating;
  final String deliveryTime;
  final int price;

  const RecommendedItem({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.badges,
    required this.rating,
    required this.deliveryTime,
    required this.price,
  });

  static const List<RecommendedItem> recommendedItems = [
    RecommendedItem(
      id: '1',
      title: '단백질 듬뿍 샐러드',
      subtitle: '파워운동중, 고단백',
      imageUrl: 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?auto=format&w=400&q=80',
      badges: ['파워운동중', '고단백'],
      rating: 4.9,
      deliveryTime: '20-30',
      price: 13900,
    ),
    RecommendedItem(
      id: '2',
      title: '가벼운 과일 샐러드',
      subtitle: '가벼운 저녁한끼, 비타민',
      imageUrl: 'https://images.unsplash.com/photo-1564093497595-593b96d80180?auto=format&w=400&q=80',
      badges: ['가벼운 저녁한끼', '비타민'],
      rating: 4.7,
      deliveryTime: '25-35',
      price: 11900,
    ),
    RecommendedItem(
      id: '3',
      title: '영양만점 한끼도시락',
      subtitle: '영양듬뿍, 든든한 한끼',
      imageUrl: 'https://images.unsplash.com/photo-1546069901-5ec6a79120b0',
      badges: ['영양듬뿍', '든든한 한끼'],
      rating: 4.8,
      deliveryTime: '30-40',
      price: 12900,
    ),
  ];
} 