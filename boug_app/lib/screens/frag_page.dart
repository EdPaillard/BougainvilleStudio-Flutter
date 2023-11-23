import 'package:flutter/material.dart';

import 'home_page.dart';

class FragPage extends StatelessWidget {
  const FragPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
              child: Text(
            'Ceci est un super frag incroyable !',
            style: TextStyle(color: Colors.white, fontSize: 24),
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
