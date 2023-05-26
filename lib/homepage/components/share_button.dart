import 'package:flutter/material.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        Icons.share,
        color: colorScheme.primary,
      ),
    );
  }
}
