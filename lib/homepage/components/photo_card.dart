import 'package:catstagram/homepage/components/cubits/like_button_pressed_cubit.dart';
import 'package:catstagram/homepage/components/cubits/total_likes_cubit.dart';
import 'package:catstagram/homepage/components/like_button.dart';
import 'package:catstagram/homepage/components/share_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LikeButtonPressedCubit(),
        ),
        BlocProvider(
          create: (context) => TotalLikesCubit(),
        ),
      ],
      child: const PhotoCardComponent(),
    );
  }
}

class PhotoCardComponent extends StatelessWidget {
  const PhotoCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return BlocListener<LikeButtonPressedCubit, bool>(
      listener: (context, isPressed) {
        context.read<TotalLikesCubit>().likeButton(isPressed: isPressed);
      },
      child: SizedBox(
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
                  const LikeButton(),
                  BlocBuilder<TotalLikesCubit, int>(
                    builder: (context, likes) {
                      return Text(
                        '$likes likes',
                        style: textTheme.labelLarge
                            ?.copyWith(color: colorScheme.primary),
                      );
                    },
                  ),
                  const Spacer(),
                  ShareButton(onPressed: () => print('clicked')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
