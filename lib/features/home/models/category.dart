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
      description: '채식 위주의 든든한 메뉴',
      icon: LineAwesomeIcons.leaf,
    ),
    Category(
      id: 'bulkup',
      name: '벌크업단단',
      description: '고단백 건강식',
      icon: LineAwesomeIcons.dumbbell,
    ),
    Category(
      id: 'hot',
      name: '따뜻한 거',
      description: '따뜻한 건강식',
      icon: LineAwesomeIcons.utensils,
    ),
    Category(
      id: 'dessert',
      name: '디저트는 못참지',
      description: '건강한 디저트',
      icon: LineAwesomeIcons.cookie,
    ),
    Category(
      id: 'vegan',
      name: '비건',
      description: '채식주의자를 위한 메뉴',
      icon: LineAwesomeIcons.seedling,
    ),
  ];
} 