import 'package:catstagram/homepage/components/like_button.dart';
import 'package:catstagram/homepage/components/share_button.dart';
import 'package:flutter/material.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard({super.key});

  final int likes = 100;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return SizedBox(
      height: 300,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/cute_cat.jpg'),
                ),
              ),
            ),
          ),
          Container(
            color: colorScheme.primaryContainer,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                // Sadly this like button doesn't update the like variable.
                // It also doesn't change to a filled heart when pressed.
                LikeButton(
                  onPressed: () => print('clicked'),
                  isLiked: false,
                ),
                Text(
                  '$likes likes',
                  style: textTheme.labelLarge
                      ?.copyWith(color: colorScheme.primary),
                ),
                const Spacer(),
                ShareButton(onPressed: () => print('clicked')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
