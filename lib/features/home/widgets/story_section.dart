import 'package:flutter/material.dart';
import '../../../features/shared/constants/app_colors.dart';
import '../models/story.dart';
import '../models/popular_item.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../shared/widgets/skeleton.dart';

class StorySection extends StatelessWidget {
  final bool isLoading;

  const StorySection({
    super.key,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Skeleton(width: 200, height: 24),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const _StorySkeletonCard();
                },
              ),
            ),
          ],
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              '우리가 먹고, 사는 이야기.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 320,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              itemCount: Story.stories.length,
              itemBuilder: (context, index) {
                final story = Story.stories[index];
                return _StoryCard(story: story);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _StoryCard extends StatelessWidget {
  final Story story;

  const _StoryCard({
    required this.story,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Story를 PopularItem으로 변환하여 메뉴 상세 페이지로 전달
        final popularItem = PopularItem(
          id: story.id,
          title: story.title,
          subtitle: story.subtitle,  // 실제 subtitle 사용
          imageUrl: story.imageUrl,
          price: story.price,
          rating: 4.5,  // 기본값 설정
          deliveryTime: '20-30',  // String 형식으로 배달시간 설정
        );
        
        Navigator.pushNamed(
          context,
          '/menu_detail',
          arguments: popularItem,
        );
      },
      child: Container(
        width: 280,
        margin: const EdgeInsets.only(right: 16),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // 이미지
              AspectRatio(
                aspectRatio: 16 / 9,
                child: CachedNetworkImage(
                  imageUrl: story.imageUrl,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    color: AppColors.bgSecondary,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  errorWidget: (context, url, error) => Container(
                    color: AppColors.bgSecondary,
                    child: const Icon(LineAwesomeIcons.image),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.mainPink.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          story.category,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: AppColors.textPrimary,
                              ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        story.title,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Expanded(
                        child: Text(
                          story.subtitle,
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: AppColors.textSecondary,
                              ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StorySkeletonCard extends StatelessWidget {
  const _StorySkeletonCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: const EdgeInsets.only(right: 16),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 이미지 영역
            const AspectRatio(
              aspectRatio: 16 / 9,
              child: Skeleton(height: 160),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 카테고리 배지
                    const Skeleton(width: 80, height: 20),
                    const SizedBox(height: 8),
                    // 제목
                    const Skeleton(width: 160, height: 20),
                    const SizedBox(height: 4),
                    // 부제목 (여러 줄)
                    const Skeleton(width: 240, height: 16),
                    const SizedBox(height: 4),
                    const Skeleton(width: 200, height: 16),
                    const SizedBox(height: 4),
                    const Skeleton(width: 180, height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 