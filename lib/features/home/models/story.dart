class Story {
  final String id;
  final String title;
  final String subtitle;
  final String imageUrl;
  final String category;
  final int price;

  const Story({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.category,
    required this.price,
  });

  static const List<Story> stories = [
    Story(
      id: '1',
      title: '내 몸이 된 음식',
      subtitle: '각 식재료가 생겨나 한 그릇 안에 섞이기까지의 이야기',
      imageUrl: 'https://images.unsplash.com/photo-1490645935967-10de6ba17061?auto=format&w=600&q=80',
      category: '식재료 이야기',
      price: 10000,
    ),
    Story(
      id: '2',
      title: '쉐프의 하루',
      subtitle: '건강한 한끼를 만드는 사람들의 이야기',
      imageUrl: 'https://images.unsplash.com/photo-1556910103-1c02745aae4d?auto=format&w=600&q=80',
      category: '쉐프 스토리',
      price: 20000,
    ),
  ];
} 