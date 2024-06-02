import 'package:flutter/material.dart';
import 'package:news_app/ui/screens/widgets/article.card.dart';

class ArticlesList extends StatelessWidget {
  const ArticlesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: ArticleCard(),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: ArticleCard(),
        ),
      ],
    );
  }
}