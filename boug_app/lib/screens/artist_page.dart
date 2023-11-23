import 'package:flutter/material.dart';

import 'home_page.dart';

class ArtistPage extends StatelessWidget {
  const ArtistPage({required this.artistIndex, Key? key}) : super(key: key);
  final int artistIndex;

  static const Map artistsDescription = {
    1: 'Ouah !',
    2: 'Incroyable !',
    3: 'Top super !'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Text(
            artistsDescription[artistIndex],
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
