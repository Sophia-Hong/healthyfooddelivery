# Healthigo Frontend Style Guide

## 1. 브랜드 아이덴티티

# Healthigo Frontend Style Guide - Updated

## 1. 컬러 시스템

### 1.1 브랜드 컬러
```dart
// Brand Colors
final Color mainYellow = Color(0xFFF3F5B1);   // 메인 브랜드 컬러 (연노랑)
final Color mainBlue = Color(0xFFDCE4FF);     // 서브 브랜드 컬러 (연파랑)
final Color mainPink = Color(0xFFFFE1F9);     // 서브 브랜드 컬러 (연분홍)

// Primary Colors
final Color primaryOrange = Color(0xFFFF7F5C); // 강조색 (코랄)
final Color primaryGold = Color(0xFFE9C064);   // 강조색 (골드)
final Color primaryBlue = Color(0xFF94A6FF);   // 강조색 (파스텔 블루)
```

### 1.2 배경 컬러
```dart
// Background Colors
final Color bgPrimary = Color(0xFFFFFDF7);    // 메인 배경 (아이보리)
final Color bgSecondary = Color(0xFFFFFFFF);  // 카드 배경 (화이트)
final Color bgBlue = Color(0xFFF0F3FF);       // 섹션 배경 1
final Color bgPink = Color(0xFFFFF0F9);       // 섹션 배경 2
final Color bgYellow = Color(0xFFFFFDE1);     // 섹션 배경 3
```

### 1.3 카테고리 컬러
```dart
// Category Colors
final Map<String, Color> categoryColors = {
  'salad': Color(0xFF9DD0FF),      // 고기안부럽샐러드
  'bulkup': Color(0xFFFFB88A),     // 벌크업단단
  'hot': Color(0xFFFFA7A7),        // 따뜻한 거
  'dessert': Color(0xFFFFB5E6),    // 디저트는 못참지
  'vegan': Color(0xFFA5E9C8),      // 비건
};

// Category Background Colors
final Map<String, Color> categoryBgColors = {
  'salad': Color(0xFFF0F8FF),
  'bulkup': Color(0xFFFFF4ED),
  'hot': Color(0xFFFFF0F0),
  'dessert': Color(0xFFFFF0F7),
  'vegan': Color(0xFFF0FFF6),
};
```

### 1.4 텍스트 컬러
```dart
// Text Colors
final Color textPrimary = Color(0xFF2C3D4F);    // 주요 텍스트
final Color textSecondary = Color(0xFF6B7C93);  // 부제목
final Color textTertiary = Color(0xFFA3AEBF);   // 보조 텍스트
final Color textInvert = Color(0xFFFFFFFF);     // 반전 텍스트
```

## 2. 일러스트레이션 스타일 가이드

### 2.1 스타일 특성
```dart
// Illustration Style
final IllustrationStyle guideStyle = IllustrationStyle(
  strokeWidth: 1.5,                // 선 두께
  strokeColor: Colors.white,       // 선 색상
  cornerRadius: 8.0,              // 모서리 라운딩
  backgroundColor: categoryColors, // 배경 색상
);
```

### 2.2 아이콘 스타일
```dart
// Icon Style
final IconStyle guideIconStyle = IconStyle(
  strokeWidth: 1.5,
  filled: false,
  rounded: true,
  size: Size(24, 24),
);
```

## 3. 컴포넌트 스타일 

### 3.1 카드 스타일
```dart
// Card Decoration
final BoxDecoration cardDecoration = BoxDecoration(
  color: bgSecondary,
  borderRadius: BorderRadius.circular(16),
  border: Border.all(
    color: Colors.white,
    width: 1.5,
  ),
  boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.05),
      offset: Offset(0, 4),
      blurRadius: 12,
    ),
  ],
);
```

### 3.2 버튼 스타일
```dart
// Primary Button
final ButtonStyle primaryButton = ElevatedButton.styleFrom(
  backgroundColor: mainYellow,
  foregroundColor: textPrimary,
  elevation: 0,
  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
    side: BorderSide(
      color: textPrimary.withOpacity(0.1),
      width: 1.5,
    ),
  ),
);

// Secondary Button
final ButtonStyle secondaryButton = OutlinedButton.styleFrom(
  backgroundColor: bgSecondary,
  foregroundColor: textPrimary,
  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
    side: BorderSide(
      color: textPrimary.withOpacity(0.1),
      width: 1.5,
    ),
  ),
);
```

## 4. 사용 예시

### 4.1 카테고리 카드
```dart
Container(
  decoration: BoxDecoration(
    color: categoryColors['salad'],
    borderRadius: BorderRadius.circular(16),
    border: Border.all(
      color: Colors.white,
      width: 1.5,
    ),
  ),
  padding: EdgeInsets.all(16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // 일러스트레이션 아이콘
      Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          CustomIcons.salad,
          color: categoryColors['salad'],
          size: 24,
        ),
      ),
      SizedBox(height: 12),
      Text('고기안부럽샐러드', 
        style: TextStyle(
          color: textPrimary,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text('채소도 맛있다',
        style: TextStyle(
          color: textSecondary,
          fontSize: 12,
        ),
      ),
    ],
  ),
);


## 4. 레이아웃 규칙

### 4.1 여백
```dart
// Spacing
const double spacingXS = 4.0;
const double spacingS = 8.0;
const double spacingM = 16.0;
const double spacingL = 24.0;
const double spacingXL = 32.0;
const double spacingXXL = 40.0;
```

### 4.2 반응형 기준
```dart
// Breakpoints
const double breakpointMobile = 360.0;
const double breakpointTablet = 768.0;
const double breakpointDesktop = 1024.0;
```

## 5. 애니메이션

### 5.1 지속 시간
```dart
// Durations
const Duration durationShort = Duration(milliseconds: 150);
const Duration durationMedium = Duration(milliseconds: 300);
const Duration durationLong = Duration(milliseconds: 500);
```

### 5.2 애니메이션 커브
```dart
// Curves
final Curve curveDefault = Curves.easeInOut;
final Curve curveEmphasized = Curves.easeOutCubic;
```

## 6. 접근성

### 6.1 최소 터치 영역
```dart
// Minimum touch target size
const double minTouchTarget = 44.0;  // iOS HIG 기준
```

## 7. 아이콘

### 7.1 아이콘 사이즈
```dart
// Icon sizes
const double iconSizeSmall = 16.0;
const double iconSizeMedium = 24.0;
const double iconSizeLarge = 32.0;
```

## 8. 애니메이션 가이드

### 8.1 카테고리 전환
```dart
// 카테고리간 전환 애니메이션
final Duration categoryTransition = Duration(milliseconds: 300);
final Curve categoryCurve = Curves.easeInOut;
```

### 8.2 스크롤 효과
```dart
// 스크롤 애니메이션
final Duration scrollDuration = Duration(milliseconds: 500);
final Curve scrollCurve = Curves.easeOutCubic;
```

### 8.3 카드 인터랙션
```dart
// 카드 탭/프레스 효과
final Duration cardPressDuration = Duration(milliseconds: 150);
final Curve cardPressCurve = Curves.easeInOut;

// 카드 스케일 값
final double cardPressScale = 0.98;
```

## 9. 제스처 가이드

### 9.1 스와이프 동작
```dart
// 스와이프 민감도
final double swipeSensitivity = 0.5;
final double swipeThreshold = 0.3;
```

### 9.2 터치 영역
```dart
// 최소 터치 영역
final double minTouchArea = 44.0;  // iOS HIG 기준
final EdgeInsets touchPadding = EdgeInsets.all(8.0);
```

