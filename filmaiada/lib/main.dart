import 'package:flutter/material.dart';
import './data.dart'; // Certifique-se de que o arquivo data.dart contém a lista de filmes.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Filmaiada")),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            for (var movie in movies)
              Column(
                children: [
                  InkWell(
                      child: Container(
                        height: 50,
                        color: Colors.blue,
                        child: Center(child: Text(movie.name)),
                      ),
                      onTap: () => {}),
                  const SizedBox(height: 10),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
