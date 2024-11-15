import 'package:flutter/material.dart';
import '../../../features/shared/constants/app_colors.dart';
import '../models/popular_item.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({super.key});

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
              '인기 메뉴',
              style: Theme.of(context).textTheme.headlineSmall,
              semanticsLabel: '인기 메뉴 섹션',
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              itemCount: PopularItem.popularItems.length,
              itemBuilder: (context, index) {
                final item = PopularItem.popularItems[index];
                return _PopularItemCard(item: item);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _PopularItemCard extends StatelessWidget {
  final PopularItem item;

  const _PopularItemCard({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 16),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 이미지
            AspectRatio(
              aspectRatio: 1.5,
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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  ),
                  const SizedBox(height: 8),
                  // 평점과 배달시간
                  Row(
                    children: [
                      Icon(
                        LineAwesomeIcons.star_1,
                        size: 16,
                        color: AppColors.primaryGold,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        item.rating.toString(),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(width: 8),
                      Icon(
                        LineAwesomeIcons.clock,
                        size: 16,
                        color: AppColors.textTertiary,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${item.deliveryTime}분',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // 가격
                  Text(
                    '${item.price.toString()}원',
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
    );
  }
} 