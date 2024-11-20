import 'package:filmaiada/models/movie.dart';
import 'package:filmaiada/providers/movies_provider.dart';
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
    MoviesProvider moviesProvider = MoviesProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movie.title),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                moviesProvider.state.toogleFavorite(widget.movie.id);
              });
            },
            icon: Icon(widget.movie.isFavorite
                ? Icons.playlist_add_check
                : Icons.playlist_add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 400,
              child: Image.asset(
                widget.movie.posterUrl,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
