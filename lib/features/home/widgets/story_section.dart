import 'package:flutter/material.dart';
import '../../../features/shared/constants/app_colors.dart';
import '../models/story.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

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
              '한번도 쉬지 않은, 먹는다는 행위',
              style: Theme.of(context).textTheme.headlineSmall,
              semanticsLabel: '음식 스토리 섹션',
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

class _StoryCard extends StatefulWidget {
  final Story story;

  const _StoryCard({
    required this.story,
  });

  @override
  State<_StoryCard> createState() => _StoryCardState();
}

class _StoryCardState extends State<_StoryCard> with SingleTickerProviderStateMixin {
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
                    imageUrl: widget.story.imageUrl,
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
                            widget.story.category,
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: AppColors.textPrimary,
                                ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          widget.story.title,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Expanded(
                          child: Text(
                            widget.story.subtitle,
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
      ),
    );
  }
} 