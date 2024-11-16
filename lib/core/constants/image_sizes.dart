class ImageSizes {
  static const double thumbnailSize = 120;
  static const double mediumSize = 240;
  static const double largeSize = 480;
  
  // 이미지 URL에 사이즈 파라미터 추가
  static String getOptimizedUrl(String url, double size) {
    return '$url?w=${size.toInt()}&q=80';
  }
} 