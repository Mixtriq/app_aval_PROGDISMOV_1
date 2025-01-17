import 'dart:convert';

import 'package:filmaiada/models/movie.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart'; 

class MoviesProvider with ChangeNotifier {
  List<Movie> _movies = [];
  bool _isLoading = false;
  String? _error;

  List<Movie> get movies => _movies;
  bool get isLoading => _isLoading;
  String? get error => _error;

  get state => this;
  static MoviesProvider of(BuildContext context) {
    return Provider.of<MoviesProvider>(context, listen: false);
  }

  Future<void> fetchMovies() async {
    _isLoading = true;
    notifyListeners();

    try {
      final url = Uri.https(
          'filmaiada-33122-default-rtdb.firebaseio.com', 'movies.json');

      final response = await http.get(url);

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        _movies = data.isNotEmpty? data.map((json) => Movie.fromJson(json)).toList(): [];
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
}
