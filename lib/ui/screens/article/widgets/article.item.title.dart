import 'package:flutter/material.dart';

class ArticleItemTitle extends StatelessWidget {
  const ArticleItemTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      overflow: TextOverflow.ellipsis,
      "A ruggedlyruggedly ",
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,
          fontFamily: 'Poppins'
      ),
      maxLines: 2,
    );
  }
}