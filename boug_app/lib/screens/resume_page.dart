import 'package:boug_app/screens/home_page.dart';
import 'package:flutter/material.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key}) : super(key: key);

  final String presentation =
      "Bougainville est un projet collaboratif crossmedia. Il vous plonge dans les aventures d'un capitaine de la Marine, lancé dans l'exploration balbutiante d'un vaste univers. Mêlant Grandes Découvertes et Odyssée, Bougainville recherche autant l'aventure que la réflexion sur les Hommes devant l'inconnu, l'immense, devant eux-mêmes...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Text(
            presentation,
            style: const TextStyle(color: Colors.white, fontSize: 24),
          )),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the "home" route using MaterialPageRoute
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: const Text('Go to Home'),
            ),
          ),
        ],
      ),
    );
  }
}
