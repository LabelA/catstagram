import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({super.key, required this.onPressed, required this.isLiked});

  final VoidCallback onPressed;
  final bool isLiked;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        isLiked ? Icons.favorite : Icons.favorite_border,
        color: colorScheme.primary,
      ),
    );
  }
}
