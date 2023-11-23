import 'package:boug_app/screens/artist_page.dart';
import 'package:boug_app/screens/frag_page.dart';
import 'package:flutter/material.dart';
import 'package:boug_app/screens/resume_page.dart';
import 'package:boug_app/components/cartouche_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo_boug.png',
              width: 50,
              height: 50,
            ),
            const Padding(padding: EdgeInsets.only(right: 8)),
            const Text('Bougainville', style: TextStyle(color: Colors.white))
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          const CartoucheComponent(
            bgImage: 'images/main_cart.png',
            destinationPage: ResumePage(),
            textContent: 'Qui sommes-nous ?',
            alignement: Alignment.center,
            bottomColor: Colors.red,
            isArtist: false,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: CartoucheComponent(
                  bgImage: 'images/user1_cart.png',
                  destinationPage: const ArtistPage(
                    artistIndex: 1,
                  ),
                  textContent: 'ANTOINE\nPETITEAU\n\nArtiste, Designer',
                  alignement: Alignment.topLeft,
                  bottomColor: Colors.indigo.shade700,
                  picHeight: 600,
                  isArtist: true,
                ),
              ),
              const SizedBox(
                width: 10,
                child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.black)),
              ),
              Expanded(
                child: CartoucheComponent(
                  bgImage: 'images/user2_cart.png',
                  destinationPage: const ArtistPage(
                    artistIndex: 2,
                  ),
                  textContent: 'EDOUARD\nPAILLARD\n\nAuteur, Developpeur',
                  alignement: Alignment.topLeft,
                  bottomColor: Colors.red.shade700,
                  picHeight: 600,
                  isArtist: true,
                ),
              ),
              const SizedBox(
                width: 10,
                child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.black)),
              ),
              Expanded(
                child: CartoucheComponent(
                  bgImage: 'images/user3_cart.png',
                  destinationPage: const ArtistPage(
                    artistIndex: 3,
                  ),
                  textContent: 'JULES\nLUCCIARDI\n\nIngé son, Compositeur',
                  alignement: Alignment.topLeft,
                  bottomColor: Colors.green.shade700,
                  picHeight: 600,
                  isArtist: true,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Expanded(
                child: CartoucheComponent(
                    bgImage: 'images/news_show1.png',
                    destinationPage: FragPage(),
                    textContent: 'Frag 1',
                    alignement: Alignment.center,
                    bottomColor: Colors.yellow,
                    isArtist: false),
              ),
              SizedBox(
                width: 10,
                child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.black)),
              ),
              Expanded(
                child: CartoucheComponent(
                    bgImage: 'images/news_show2.png',
                    destinationPage: FragPage(),
                    textContent: 'Frag 1',
                    alignement: Alignment.center,
                    bottomColor: Colors.orange,
                    isArtist: false),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
            child: DecoratedBox(decoration: BoxDecoration(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
