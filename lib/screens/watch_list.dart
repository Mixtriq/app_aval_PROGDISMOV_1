import 'package:filmaiada/models/movie.dart';
import 'package:filmaiada/providers/movies_provider.dart';
import 'package:filmaiada/widgets/favorite_movie.dart';
import 'package:flutter/material.dart';

// class WatchListScreen extends StatelessWidget {
//   const WatchListScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List<Movie> movies = MoviesProvider.of(context)
//         .state
//         .movies
//         .where((m) => m.isFavorite)
//         .toList();

//     return ListView.builder(
//         itemCount: movies.length,
//         itemBuilder: (ctx, i) => FavoriteMovie(movie: movies[i]));
//   }
// }
