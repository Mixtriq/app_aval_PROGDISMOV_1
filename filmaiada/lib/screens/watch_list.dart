import 'package:filmaiada/models/movie.dart';
import 'package:filmaiada/widgets/favorite_movie.dart';
import 'package:flutter/material.dart';

class WatchListScreen extends StatelessWidget {
  const WatchListScreen({super.key, required this.moviesList});

  final List<Movie> moviesList;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
          itemCount: moviesList.length, itemBuilder: (ctx, i) => FavoriteMovie(movie: moviesList[i])),
    );
  }
}
