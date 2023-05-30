import 'package:catstagram/homepage/components/photo_card.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final photoCardItems = List.filled(10, const PhotoCard());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catstagram'),
      ),
      // This widget looks empty, would be nice to see multiple photocards in
      // a list.
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
          itemCount: photoCardItems.length,
          itemBuilder: (context, index) => photoCardItems[index],
          separatorBuilder: (context, index) => const SizedBox(height: 16),
        ),
      ),
    );
  }
}
