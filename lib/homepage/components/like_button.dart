import 'package:catstagram/homepage/components/cubits/like_button_pressed_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return BlocBuilder<LikeButtonPressedCubit, bool>(
      builder: (context, isLiked) {
        return IconButton(
          onPressed: () => context.read<LikeButtonPressedCubit>().toggle(),
          icon: Icon(
            isLiked ? Icons.favorite : Icons.favorite_border,
            color: colorScheme.primary,
          ),
        );
      },
    );
  }
}
