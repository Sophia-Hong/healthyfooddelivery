import 'package:flutter/material.dart';
import '../models/category.dart';
import 'category_card.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              '이런 메뉴 어때요',
              style: Theme.of(context).textTheme.headlineSmall,
              semanticsLabel: '메인 카테고리 섹션',
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 1.5,
            ),
            itemCount: Category.mainCategories.length,
            itemBuilder: (context, index) {
              return CategoryCard(
                category: Category.mainCategories[index],
              );
            },
          ),
        ],
      ),
    );
  }
} 