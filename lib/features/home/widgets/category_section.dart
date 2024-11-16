import 'package:flutter/material.dart';
import '../models/category.dart';
import '../../../features/shared/constants/app_colors.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  String? _selectedId;

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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: Category.categories.map((category) {
              final isSelected = _selectedId == category.id;
              return Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 4,
                ),
                child: Material(
                  color: isSelected 
                      ? AppColors.categoryColors[category.id] 
                      : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  elevation: 1,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _selectedId = isSelected ? null : category.id;
                      });
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: (AppColors.categoryColors[category.id] ?? Colors.grey).withOpacity(0.8),
                          width: 1.2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        category.name,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: isSelected 
                              ? Colors.white 
                              : AppColors.categoryColors[category.id]?.withOpacity(0.85),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
} 