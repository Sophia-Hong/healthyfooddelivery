import 'package:flutter/material.dart';
import '../models/category.dart';
import '../../../features/shared/constants/app_colors.dart';
import '../pages/meat_alternative_page.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  String? _selectedId;

  static const primaryGreen = Color(0xFF1B5E20);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 24, 16, 12),
              child: Text(
                '뭐 먹을지 모르겠을 땐',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 8.0,
                runSpacing: 8.0,
                children: Category.categories.map((category) {
                  final isSelected = _selectedId == category.id;
                  return Material(
                    color: isSelected 
                        ? primaryGreen 
                        : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    elevation: 1,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _selectedId = isSelected ? null : category.id;
                        });
                        
                        if (category.id == 'salad') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MeatAlternativePage(),
                            ),
                          );
                        }
                      },
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: isSelected 
                                ? primaryGreen 
                                : AppColors.textPrimary.withOpacity(0.2),
                            width: 1.2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          category.name,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: isSelected 
                                ? Colors.white 
                                : AppColors.textPrimary,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 