import 'package:filmaiada/models/movie.dart';
import 'package:filmaiada/widgets/movie_page.dart';
import 'package:flutter/material.dart';

class MoviesScrenn extends StatefulWidget {
  const MoviesScrenn({super.key, required this.moviesList});

  final List<Movie> moviesList;

  @override
  State<MoviesScrenn> createState() => _MoviesScrennState();
}

class _MoviesScrennState extends State<MoviesScrenn> {
  final _pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        controller: _pageController,
        children: widget.moviesList.map((m) => MoviePage(movie: m)).toList(),
      ),
    );
  }
}
