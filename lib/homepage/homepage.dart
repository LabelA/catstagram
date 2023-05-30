import 'package:catstagram/homepage/components/photo_card.dart';
import 'package:catstagram/homepage/cubits/cat_overview_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CatOverviewCubit(context.read())..getCats(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catstagram'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<CatOverviewCubit, CatOverviewState>(
          builder: (context, state) {
            return state.maybeWhen(
              result: (cats) {
                return ListView.separated(
                  itemCount: cats.length,
                  itemBuilder: (context, index) => PhotoCard(
                    imageUrl: cats[index].url,
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                );
              },
              orElse: Container.new,
            );
          },
        ),
      ),
    );
  }
}
