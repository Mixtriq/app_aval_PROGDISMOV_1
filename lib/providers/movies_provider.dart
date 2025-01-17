import 'dart:convert';

import 'package:filmaiada/models/movie.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider with ChangeNotifier {
  List<Movie> _movies = [];
  bool _isLoading = false;
  String? _error;

  List<Movie> get movies => _movies;
  bool get isLoading => _isLoading;
  String? get error => _error;
  int? get lastId => _movies[_movies.length].id;

  Future<void> fetchMovies() async {
    _isLoading = true;
    notifyListeners();

    try {
      final url = Uri.https(
          'filmaiada-33122-default-rtdb.firebaseio.com', 'movies.json');

      final response = await http.get(url);

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        _movies = data.map((json) => Movie.fromJson(json)).toList();
      } else {
        _error = 'Falha ao carregar filmes';
      }
    } catch (error) {
      _error = error.toString();
      rethrow;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> addMovie(Movie movie) async {
    _isLoading = true;
    notifyListeners();

    try {
      final url = Uri.https('filmaiada-33122-default-rtdb.firebaseio.com',
          "movies/${movie.id}.json");

      final response = await http.post(url, body: movie.toJson());

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        _movies = data.map((json) => Movie.fromJson(json)).toList();
      } else {
        _error = 'Falha ao adicionar o filme';
      }
    } catch (error) {
      _error = error.toString();
      rethrow;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

}
