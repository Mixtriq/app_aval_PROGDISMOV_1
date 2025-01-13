import 'package:filmaiada/data/dummy_data.dart';
import 'package:filmaiada/models/movie.dart';
import 'package:flutter/material.dart';

class MoviesState {
  final List<Movie> movies;

  const MoviesState({required this.movies});

  void toogleFavorite(int movieId) {
    for (var i = 0; i < movies.length; i++) {
      if (movies[i].id == movieId) {
        movies[i].isFavorite = !movies[i].isFavorite;
        hasToogled();
      }
    }

  }

  hasToogled() {
    return true;
  }
}

class MoviesProvider extends InheritedWidget {
  MoviesProvider({
    super.key,
    required super.child,
  });

  final MoviesState state = MoviesState(movies: dummyMovies);

  static MoviesProvider? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MoviesProvider>();
  }

  static MoviesProvider of(BuildContext context) {
    final MoviesProvider? result = maybeOf(context);
    assert(result != null, 'No MoviesProvider found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(MoviesProvider oldWidget) =>
      oldWidget.state.hasToogled() ?? false;
}
