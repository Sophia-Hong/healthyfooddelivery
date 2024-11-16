import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        'Healthigo',
        style: GoogleFonts.quicksand(
          textStyle: const TextStyle(
            color: Color(0xFF1B5E20),  // Material Design Dark Green
            fontSize: 30,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.2,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            icon: const Icon(
              LineAwesomeIcons.search,
              color: Colors.black,
            ),
            onPressed: () {
              // TODO: 검색 화면으로 이동
            },
            tooltip: '검색하기',
          ),
        ),
      ],
    );
  }
} 