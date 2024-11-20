import 'package:filmaiada/screens/about_us.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  const Icon(
                    Icons.movie,
                    size: 48.0,
                  ),
                  const SizedBox(width: 20),
                  Text(
                    'Filmaiada',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const AboutUsScreen()));
              },
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.info_outline),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text('Sobre nós')
                  ],
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}


// Text('Criadores:', style: Theme.of(context).textTheme.titleLarge,),
//             const SizedBox(height: 10.0,),
//             const ProfileTile(name: 'Kevin Machado', color: Colors.purple),
//             const ProfileTile(name: 'Carlos Eduardo', color: Colors.blue)