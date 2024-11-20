import 'package:filmaiada/models/movie.dart';
import 'package:filmaiada/screens/movie_info.dart';
import 'package:flutter/material.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        borderOnForeground: true,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => MovieInfoScreen(movie: movie)));
                },
                child: Image.asset(
                  movie.posterUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              movie.title,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber),
                    Text(movie.averageRating.toStringAsFixed(1)),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.access_time),
                    Text("${movie.duration ~/ 60}h ${movie.duration % 60}min"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
