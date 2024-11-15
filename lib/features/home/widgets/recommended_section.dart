import 'package:flutter/material.dart';
import '../../../features/shared/constants/app_colors.dart';
import '../models/recommended_item.dart';
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

class _RecommendedItemCard extends StatefulWidget {
  final RecommendedItem item;

  const _RecommendedItemCard({
    required this.item,
  });

  @override
  State<_RecommendedItemCard> createState() => _RecommendedItemCardState();
}

class _RecommendedItemCardState extends State<_RecommendedItemCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.98,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _controller.forward(),
      onTapUp: (_) => _controller.reverse(),
      onTapCancel: () => _controller.reverse(),
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            height: 120,
            child: Row(
              children: [
                // 이미지
                AspectRatio(
                  aspectRatio: 1,
                  child: CachedNetworkImage(
                    imageUrl: widget.item.imageUrl,
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
                        // 배지
                        SizedBox(
                          height: 24,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: widget.item.badges.length,
                            separatorBuilder: (context, index) => 
                                const SizedBox(width: 8),
                            itemBuilder: (context, index) {
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.mainPink.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  widget.item.badges[index],
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                        color: AppColors.textPrimary,
                                      ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 8),
                        // 제목
                        Text(
                          widget.item.title,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Spacer(),
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
                              widget.item.rating.toString(),
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
                              '${widget.item.deliveryTime}분',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            const Spacer(),
                            // 가격
                            Text(
                              '${widget.item.price}원',
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
} 