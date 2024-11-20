import 'package:filmaiada/providers/movies.dart';
import 'package:filmaiada/screens/movies.dart';
import 'package:filmaiada/screens/watch_list.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({super.key});

  @override
  State<AppNavigationScreen> createState() => _AppNavigationScreenState();
}

class _AppNavigationScreenState extends State<AppNavigationScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var moviesProvider = MoviesProvider.of(context);

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.movie),
            label: 'Filmes',
          ),
          NavigationDestination(icon: Icon(Icons.reorder), label: 'Minha Lista')
        ],
      ),
      body: [
        MoviesScrenn(moviesList: moviesProvider.state.movies),
        WatchListScreen(moviesList: moviesProvider.state.movies.where((m) => m.isFavorite).toList()),
      ][currentPageIndex],
    );
  }
}
