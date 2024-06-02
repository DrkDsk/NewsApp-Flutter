import 'package:flutter/material.dart';
import 'package:news_app/domain/viewmodels/news.viewmodel.dart';
import 'package:news_app/ui/screens/article/widgets/article.card.dart';

class ArticlesContainer extends StatelessWidget {

  final NewsViewModel newsViewModel;

  const ArticlesContainer({
    super.key, required this.newsViewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: newsViewModel.articles.length,
            itemBuilder: (context, index) {
              final article = newsViewModel.articles.elementAt(index);
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: ArticleCard(
                  author: article.author ?? "Unknown Author",
                  title: article.title ?? "Unknown Title",
                  imageUrl: article.urlToImage ?? "Unknown Image",
                ),
              );
            }
        )
    );
  }
}