import 'package:filmaiada/providers/movies_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieFormScreen extends StatefulWidget {
  const MovieFormScreen({super.key});

  @override
  State<MovieFormScreen> createState() => _MovieFormScreenState();
}

class _MovieFormScreenState extends State<MovieFormScreen> {
  late List<int> _years;
  int? _selectedYear;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    final currentYear = DateTime.now().year;
    _years = List.generate(currentYear - 1900 + 1, (index) => 1900 + index);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Filme'),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    MoviesProvider moviesProvider = Provider.of<MoviesProvider>(context);

    if (moviesProvider.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (moviesProvider.error != null) {
      return Center(
        child: Text(moviesProvider.error!),
      );
    } else {
      return Form(
        key: _formKey,
          child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'Título'),
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Diretor'),
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Título'),
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Duração (min)'),
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Sinopse'),
            maxLines: 3,

          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Estrelas'),
            maxLines: 3,

          ),
          DropdownButton<int>(
            value: _selectedYear,
            hint: const Text("Ano de Lançamento"),
            items: _years.map((year) {
              return DropdownMenuItem<int>(
                value: year,
                child: Text(year.toString()),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _selectedYear = value;
              });
            },
          ),
        ],
      ));
    }
  }
}
