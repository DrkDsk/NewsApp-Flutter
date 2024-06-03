import 'package:flutter/material.dart';

class ArticleRoundedImage extends StatelessWidget {
  const ArticleRoundedImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.8,
      width: MediaQuery.of(context).size.width * 0.95,
      decoration: BoxDecoration(
          color: Colors.blue.shade900,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35)
          ),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: const NetworkImage("https://media.zenfs.com/en/aol_parade_744/45f62d2d5f5c1f76459433e3c39a7598"),
              onError: (error, stackTrace) {}
          )
      ),
    );
  }
}