import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
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