import 'package:filmaiada/models/movie.dart';
import 'package:flutter/material.dart';

class MovieInfoScreen extends StatefulWidget {
  const MovieInfoScreen({super.key, required this.movie});

  final Movie movie;

  @override
  State<MovieInfoScreen> createState() => _MovieInfoScreenState();
}

class _MovieInfoScreenState extends State<MovieInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movie.title),
      ),
    );
  }
}
