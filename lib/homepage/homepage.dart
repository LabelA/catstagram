import 'package:catstagram/homepage/components/photo_card.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catstagram'),
      ),
      // This widget looks empty, would be nice to see multiple photocards in
      // a list.
      body: const Column(
        children: [
          PhotoCard(),
        ],
      ),
    );
  }
}
