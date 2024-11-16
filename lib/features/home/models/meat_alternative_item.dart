class MeatAlternativeItem {
  final String id;
  final String title;
  final String subtitle;
  final String imageUrl;
  final double price;
  final double rating;
  final String deliveryTime;
  final List<String> badges;
  final List<String> ingredients;

  const MeatAlternativeItem({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.price,
    required this.rating,
    required this.deliveryTime,
    required this.badges,
    required this.ingredients,
  });

  static final List<MeatAlternativeItem> meatAlternativeItems = [
    MeatAlternativeItem(
      id: 'ma1',
      title: '단백질 듬뿍 두부 샐러드',
      subtitle: '고소한 두부와 신선한 채소의 완벽한 조화',
      imageUrl: 'https://images.pexels.com/photos/1213710/pexels-photo-1213710.jpeg?auto=compress&cs=tinysrgb&w=800',
      price: 12900,
      rating: 4.8,
      deliveryTime: '25-35분',
      badges: ['신메뉴', '단백질'],
      ingredients: ['두부', '퀴노아', '아보카도', '방울토마토', '견과류'],
    ),
    MeatAlternativeItem(
      id: 'ma2',
      title: '렌틸콩 파워 샐러드',
      subtitle: '식물성 단백질의 황제, 렌틸콩 샐러드',
      imageUrl: 'https://images.pexels.com/photos/1095550/pexels-photo-1095550.jpeg?auto=compress&cs=tinysrgb&w=800',
      price: 13900,
      rating: 4.7,
      deliveryTime: '20-30분',
      badges: ['베스트', '고단백'],
      ingredients: ['렌틸콩', '병아리콩', '케일', '당근', '호두'],
    ),
    MeatAlternativeItem(
      id: 'ma3',
      title: '견과류 치킨 스타일 샐러드',
      subtitle: '고소한 견과류로 만든 치킨 스타일 샐러드',
      imageUrl: 'https://images.pexels.com/photos/1059905/pexels-photo-1059905.jpeg?auto=compress&cs=tinysrgb&w=800',
      price: 14900,
      rating: 4.9,
      deliveryTime: '25-35분',
      badges: ['인기', '식물성'],
      ingredients: ['견과류 치킨', '로메인', '체리토마토', '아보카도', '크랜베리'],
    ),
    MeatAlternativeItem(
      id: 'ma4',
      title: '퀴노아 콥 샐러드',
      subtitle: '영양만점 퀴노아와 신선한 채소의 만남',
      imageUrl: 'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=800',
      price: 15900,
      rating: 4.8,
      deliveryTime: '20-30분',
      badges: ['추천', '든든'],
      ingredients: ['퀴노아', '구운 콘', '블랙빈', '아보카도', '할라피뇨'],
    ),
    MeatAlternativeItem(
      id: 'ma5',
      title: '그릴드 버섯 샐러드',
      subtitle: '육즙가득 버섯구이로 만든 특별한 샐러드',
      imageUrl: 'https://images.pexels.com/photos/406152/pexels-photo-406152.jpeg?auto=compress&cs=tinysrgb&w=800',
      price: 16900,
      rating: 4.9,
      deliveryTime: '25-35분',
      badges: ['신메뉴', '프리미엄'],
      ingredients: ['포토벨로 버섯', '양송이', '루꼴라', '파마산', '발사믹'],
    ),
  ];
} 