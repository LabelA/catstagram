import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        Icons.favorite_border,
        color: colorScheme.primary,
      ),
    );
  }
}
