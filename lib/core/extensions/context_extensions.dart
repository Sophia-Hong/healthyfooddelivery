import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  // 반응형 디자인을 위한 화면 크기 관련 유틸리티
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  
  // 디바이스 방향
  bool get isLandscape => 
      MediaQuery.of(this).orientation == Orientation.landscape;
  
  // 안전 영역 패딩
  EdgeInsets get padding => MediaQuery.of(this).padding;
  
  // 테마 접근 유틸리티
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colors => Theme.of(this).colorScheme;
  
  // 반응형 패딩
  EdgeInsets get defaultPadding => EdgeInsets.all(screenWidth * 0.04);
  
  // 반응형 사이즈
  double get gridItemSize => screenWidth * 0.28;  // 카테고리 그리드 아이템 크기
  double get cardWidth => screenWidth * 0.7;      // 카드 너비
} 