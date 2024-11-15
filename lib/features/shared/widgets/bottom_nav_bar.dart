import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../constants/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: SafeArea(
        child: NavigationBar(
          height: 60,
          backgroundColor: Colors.transparent,
          indicatorColor: AppColors.mainYellow.withOpacity(0.2),
          selectedIndex: currentIndex,
          onDestinationSelected: onTap,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          destinations: const [
            NavigationDestination(
              icon: Icon(LineAwesomeIcons.home),
              label: '홈',
              tooltip: '홈 화면',
            ),
            NavigationDestination(
              icon: Icon(LineAwesomeIcons.search),
              label: '검색',
              tooltip: '메뉴 검색',
            ),
            NavigationDestination(
              icon: Icon(LineAwesomeIcons.clipboard_list),
              label: '주문',
              tooltip: '주문 현황',
            ),
            NavigationDestination(
              icon: Icon(LineAwesomeIcons.user),
              label: '마이',
              tooltip: '마이페이지',
            ),
          ],
        ),
      ),
    );
  }
} 