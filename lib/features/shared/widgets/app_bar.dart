import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class HealthigoAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final bool showBackButton;
  final VoidCallback? onBackPressed;

  const HealthigoAppBar({
    super.key,
    required this.title,
    this.actions,
    this.showBackButton = true,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.bgSecondary,
      foregroundColor: AppColors.textPrimary,
      elevation: 0,
      centerTitle: true,
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
              tooltip: '뒤로가기',
            )
          : null,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
} 