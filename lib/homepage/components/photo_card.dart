import 'package:catstagram/homepage/components/like_button.dart';
import 'package:catstagram/homepage/components/share_button.dart';
import 'package:flutter/material.dart';

class PhotoCard extends StatefulWidget {
  const PhotoCard({super.key});

  @override
  State<PhotoCard> createState() => _PhotoCardState();
}

class _PhotoCardState extends State<PhotoCard> {
  int get likes => 100 + (isLiked ? 1 : 0);
  bool isLiked = false;

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
                  onPressed: () => setState(() => isLiked = !isLiked),
                  isLiked: isLiked,
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
