import 'package:flutter/material.dart';
import 'package:news_app/domain/viewmodels/news.viewmodel.dart';
import 'package:news_app/ui/screens/home/widgets/article.card.dart';
import 'package:provider/provider.dart';

class ArticlesList extends StatelessWidget {
  const ArticlesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Consumer<NewsViewModel>(
      builder: (
          BuildContext context,
          NewsViewModel newsViewModel,
          Widget? child
          ) {
        return Expanded(
            child: ListView.builder(
              itemCount: newsViewModel.articles.length,
              itemBuilder: (context, index) {
                final article = newsViewModel.articles[index];
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ArticleCard(author: article.author, title: article.title),
                );
              }
            )
        );
      },
    );
  }
}