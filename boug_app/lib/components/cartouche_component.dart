import 'package:flutter/material.dart';

class CartoucheComponent extends StatelessWidget {
  const CartoucheComponent(
      {required this.bgImage,
      required this.destinationPage,
      required this.textContent,
      required this.alignement,
      required this.bottomColor,
      required this.isArtist,
      this.picHeight,
      Key? key})
      : super(key: key);
  final String bgImage;
  final Widget destinationPage;
  final String textContent;
  final AlignmentGeometry alignement;
  final Color bottomColor;
  final bool isArtist;
  final double? picHeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => destinationPage),
          ),
        )
      },
      child: Stack(
        alignment: alignement,
        children: [
          Image.asset(
            bgImage,
            fit: BoxFit.cover,
            width: double.infinity,
            height: picHeight,
          ),
          isArtist
              ? Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    textContent,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                )
              : Text(
                  textContent,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 40,
              width: double.infinity,
              child:
                  DecoratedBox(decoration: BoxDecoration(color: bottomColor)),
            ),
          )
        ],
      ),
    );
  }
}
