class Story {
  final String id;
  final String title;
  final String subtitle;
  final String imageUrl;
  final String category;

  const Story({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.category,
  });

  static const List<Story> stories = [
    Story(
      id: '1',
      title: '내 몸이 된 음식',
      subtitle: '각 식재료가 태어나서 여행을 와, 한 그릇 안에 섞이기까지의 이야기',
      imageUrl: 'https://images.unsplash.com/photo-1490645935967-10de6ba17061',
      category: '식재료 이야기',
    ),
    Story(
      id: '2',
      title: '쉐프의 하루',
      subtitle: '건강한 한끼를 만드는 사람들의 이야기',
      imageUrl: 'https://images.unsplash.com/photo-1556910103-1c02745aae4d',
      category: '쉐프 스토리',
    ),
  ];
} 