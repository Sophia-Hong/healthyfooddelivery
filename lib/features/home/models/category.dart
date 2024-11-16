import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class Category {
  final String id;
  final String name;
  final String description;
  final IconData icon;

  const Category({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
  });

  static const List<Category> mainCategories = [
    Category(
      id: 'salad',
      name: '고기안부럽샐러드',
      description: '맛있고 배불러요',
      icon: LineAwesomeIcons.leaf,
    ),
    Category(
      id: 'bulkup',
      name: '벌크업단탄지',
      description: '고단백 건강식',
      icon: LineAwesomeIcons.dumbbell,
    ),
    Category(
      id: 'hot',
      name: '추울 땐 따뜻한 거',
      description: '보양이 필요할 때',
      icon: LineAwesomeIcons.utensils,
    ),
    Category(
      id: 'dessert',
      name: '디저트는 못참지',
      description: '길티프리 디저트',
      icon: LineAwesomeIcons.cookie,
    ),
    Category(
      id: 'vegan',
      name: '초록비건',
      description: '채식주의자를 위한 메뉴',
      icon: LineAwesomeIcons.seedling,
    ),
  ];
} 