class Category {
  final String id;
  final String name;

  const Category({
    required this.id,
    required this.name,
  });

  static const List<Category> categories = [
    Category(
      id: 'salad',
      name: '고기안부럽샐러드',
    ),
    Category(
      id: 'bulkup',
      name: '벌크업단탄지',
    ),
    Category(
      id: 'hot',
      name: '추울 땐 따뜻한 거',
    ),
    Category(
      id: 'dessert',
      name: '디저트는 못참지',
    ),
    Category(
      id: 'vegan',
      name: '초록비건',
    ),
  ];
} 