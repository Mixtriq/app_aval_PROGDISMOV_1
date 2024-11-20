import 'package:filmaiada/providers/movies_provider.dart';
import 'package:filmaiada/screens/about_us.dart';
import 'package:filmaiada/screens/movies.dart';
import 'package:filmaiada/screens/navigation.dart';
import 'package:filmaiada/screens/watch_list.dart';
import 'package:filmaiada/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MoviesProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Lista de Filmes',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        initialRoute: AppRoutes.home,
        routes: {
          AppRoutes.home: (ctx) => const AppNavigationScreen(),
          AppRoutes.movies: (ctx) => const MoviesScrenn(),
          AppRoutes.watchList: (ctx) => const WatchListScreen(),
          AppRoutes.aboutUs: (ctx) => const AboutUsScreen(),
        },
      ),
    );
  }
}
