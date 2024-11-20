import 'package:filmaiada/models/movie.dart';
import 'package:filmaiada/providers/movies_provider.dart';
import 'package:filmaiada/widgets/movie_page.dart';
import 'package:flutter/material.dart';

class MoviesScrenn extends StatefulWidget {
  const MoviesScrenn({super.key});

  @override
  State<MoviesScrenn> createState() => _MoviesScrennState();
}

class _MoviesScrennState extends State<MoviesScrenn> {

  final _pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
  List<Movie> movies = MoviesProvider.of(context).state.movies;
    
    return SafeArea(
      child: PageView(
        controller: _pageController,
        children: movies.map((m) => MoviePage(movie: m)).toList(),
      ),
    );
  }
}
