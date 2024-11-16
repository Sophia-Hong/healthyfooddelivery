import 'package:flutter/material.dart';
import '../../../features/shared/constants/app_colors.dart';
import '../models/recommended_item.dart';
import '../models/popular_item.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '추천 메뉴',
              style: Theme.of(context).textTheme.headlineSmall,
              semanticsLabel: '추천 메뉴 섹션',
            ),
          ),
          const SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            itemCount: RecommendedItem.recommendedItems.length,
            itemBuilder: (context, index) {
              final item = RecommendedItem.recommendedItems[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: _RecommendedItemCard(item: item),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _RecommendedItemCard extends StatelessWidget {
  final RecommendedItem item;

  const _RecommendedItemCard({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final popularItem = PopularItem(
          id: item.id,
          title: item.title,
          subtitle: item.subtitle,
          imageUrl: item.imageUrl,
          price: item.price,
          rating: item.rating,
          deliveryTime: item.deliveryTime,
        );
        
        Navigator.pushNamed(
          context,
          '/menu_detail',
          arguments: popularItem,
        );
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isWideScreen = constraints.maxWidth > 600;
            final imageSize = isWideScreen ? 160.0 : 120.0;
            
            return IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // 이미지
                  SizedBox(
                    width: imageSize,
                    height: imageSize,
                    child: CachedNetworkImage(
                      imageUrl: item.imageUrl,
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
                  // 정보
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(isWideScreen ? 16.0 : 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 뱃지
                          Wrap(
                            spacing: 4,
                            runSpacing: 4,
                            children: item.badges.map((badge) {
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.mainBlue.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  badge,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              );
                            }).toList(),
                          ),
                          const SizedBox(height: 8),
                          // 제목
                          Text(
                            item.title,
                            style: Theme.of(context).textTheme.titleMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          // 부제목
                          Text(
                            item.subtitle,
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: AppColors.textSecondary,
                                ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const Spacer(),
                          // 하단 정보
                          DefaultTextStyle(
                            style: Theme.of(context).textTheme.bodySmall ?? const TextStyle(),
                            child: Row(
                              children: [
                                // 평점
                                Icon(
                                  LineAwesomeIcons.star_1,
                                  size: 16,
                                  color: AppColors.primaryGold,
                                ),
                                const SizedBox(width: 4),
                                Text(item.rating.toString()),
                                const SizedBox(width: 8),
                                // 배달시간
                                Icon(
                                  LineAwesomeIcons.clock,
                                  size: 16,
                                  color: AppColors.textTertiary,
                                ),
                                const SizedBox(width: 4),
                                Text(item.deliveryTime),
                                const Spacer(),
                                // 가격
                                Text(
                                  '${item.price}원',
                                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
} 