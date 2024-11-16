import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../shared/widgets/bottom_nav_bar.dart';
import '../../home/screens/home_screen.dart';
import '../../search/screens/search_screen.dart';
import '../../order/screens/order_status_screen.dart';
import '../../profile/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    SearchScreen(),
    OrderStatusScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'assets/images/Logoicon.svg',
              height: 28,
              colorFilter: const ColorFilter.mode(
                Colors.black,
                BlendMode.srcIn,
              ),
              semanticsLabel: '헬시고 로고 아이콘',
            ),
            const SizedBox(width: 8),
            SvgPicture.asset(
              'assets/images/LoveText.svg',
              height: 20,
              colorFilter: const ColorFilter.mode(
                Colors.black,
                BlendMode.srcIn,
              ),
              semanticsLabel: '헬시고 로고 텍스트',
            ),
          ],
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 56,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
} 