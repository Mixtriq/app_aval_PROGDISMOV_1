import 'package:filmaiada/data/dummy_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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
