import 'package:filmaiada/data/dummy_data.dart';
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
    return PageView(
      controller: _pageController,
      children: dummyMovies.map((m) => MoviePage(movie : m)).toList(),
    );
  }
}