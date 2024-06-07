import 'package:flutter/material.dart';

class ArticleItemTitle extends StatelessWidget {

  final String title;

  const ArticleItemTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        overflow: TextOverflow.ellipsis,
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
        ),
        maxLines: 2,
      ),
    );
  }
}