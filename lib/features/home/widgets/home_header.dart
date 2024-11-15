import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../features/shared/constants/app_colors.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      title: Semantics(
        label: 'Healthigo 로고',
        child: CachedNetworkImage(
          imageUrl: 'https://images.unsplash.com/photo-1543362906-acfc16c67564',
          height: 32,
          placeholder: (context, url) => Container(
            color: AppColors.bgSecondary,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          errorWidget: (context, url, error) => Container(
            color: AppColors.bgSecondary,
            child: const Icon(LineAwesomeIcons.home),
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(LineAwesomeIcons.search),
          onPressed: () {
            // TODO: 검색 화면으로 이동
          },
          tooltip: '검색하기',
        ),
      ],
    );
  }
} 