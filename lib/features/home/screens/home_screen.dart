import 'package:flutter/material.dart';
import '../../../features/shared/constants/app_colors.dart';
import '../widgets/home_header.dart';
import '../widgets/category_section.dart';
import '../widgets/popular_section.dart';
import '../widgets/story_section.dart';
import '../widgets/recommended_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const HomeHeader(),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const CategorySection(),
                  Container(
                    color: AppColors.bgBlue.withOpacity(0.3),
                    child: const PopularSection(),
                  ),
                  Container(
                    color: AppColors.bgPink.withOpacity(0.3),
                    child: const StorySection(),
                  ),
                  Container(
                    color: AppColors.bgYellow.withOpacity(0.3),
                    child: const RecommendedSection(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} 