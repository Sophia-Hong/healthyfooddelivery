import 'package:flutter/material.dart';
import '../models/category.dart';
import '../../../features/shared/constants/app_colors.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
          child: Text(
            '이런 메뉴 어때요',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: Category.categories.length,
            itemBuilder: (context, index) {
              final category = Category.categories[index];
              return Container(
                margin: const EdgeInsets.only(right: 8),
                child: Material(
                  color: AppColors.categoryColors[category.id]?.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {
                      // TODO: 카테고리 탭 처리
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Center(
                        child: Text(
                          category.name,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.categoryColors[category.id],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
} 