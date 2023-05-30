import 'package:catstagram/core/networking/network_client.dart';
import 'package:catstagram/homepage/homepage.dart';
import 'package:catstagram/homepage/repositories/cat_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final networkClient = NetworkClient();
    return Provider(
      create: (context) => networkClient,
      child: RepositoryProvider(
        create: (context) => CatRepository(networkClient: networkClient),
        child: MaterialApp(
          title: 'Catstagram',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
            useMaterial3: true,
          ),
          home: const Homepage(),
        ),
      ),
    );
  }
}
