class PopularItem {
  final String id;
  final String title;
  final String subtitle;
  final String imageUrl;
  final double rating;
  final String deliveryTime;
  final int price;

  const PopularItem({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.rating,
    required this.deliveryTime,
    required this.price,
  });

  static const List<PopularItem> popularItems = [
    PopularItem(
      id: '1',
      title: '프로틴 샐러드',
      subtitle: '이집 맛있어요!',
      imageUrl: 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c',
      rating: 4.8,
      deliveryTime: '25-35',
      price: 12900,
    ),
    PopularItem(
      id: '2',
      title: '닭가슴살 도시락',
      subtitle: '운동쟁이들이 방금 시킨',
      imageUrl: 'https://images.unsplash.com/photo-1546069901-d5bfd2cbfb1f',
      rating: 4.9,
      deliveryTime: '20-30',
      price: 11900,
    ),
    PopularItem(
      id: '3',
      title: '저당 과일 샐러드',
      subtitle: '스트레스받지만 살은 안찔거야',
      imageUrl: 'https://images.unsplash.com/photo-1505253716362-afaea1d3d1af',
      rating: 4.7,
      deliveryTime: '30-40',
      price: 9900,
    ),
  ];
} 