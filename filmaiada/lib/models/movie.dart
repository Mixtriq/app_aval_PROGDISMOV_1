class Movie {
  final int id;
  final String title;
  final String releaseYear;
  final String posterUrl;
  final int duration;
  final String director;
  final List<String> movieStars;
  final double averageRating;
  final String synopsis;
  
  bool isFavorite = false;

  Movie(
      {required this.id,
      required this.title,
      required this.releaseYear,
      required this.posterUrl,
      required this.duration,
      required this.director,
      required this.movieStars,
      required this.averageRating,
      required this.synopsis});
}
