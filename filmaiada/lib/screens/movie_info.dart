import 'package:filmaiada/models/movie.dart';
import 'package:filmaiada/providers/movies_provider.dart';
import 'package:flutter/material.dart';
import 'package:filmaiada/widgets/movie_duration.dart';

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
              height: 300,
              child: Image.asset(
                widget.movie.posterUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              widget.movie.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
            ),
            Text(widget.movie.releaseYear),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star, color: Color.fromARGB(255, 255, 230, 0)),
                Text(widget.movie.averageRating.toString()),
                const SizedBox(width: 50),
                const Icon(Icons.access_time),
                MovieDuration(duration: widget.movie.duration)
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              widget.movie.synopsis,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Text("Diretor: ${widget.movie.director}"),
            Text("Elenco: ${widget.movie.movieStars}")
          ],
        ),
      ),
    );
  }
}
