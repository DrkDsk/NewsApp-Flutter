import 'package:flutter/material.dart';
import 'package:news_app/domain/viewmodels/news.viewmodel.dart';
import 'package:news_app/ui/screens/article/widgets/article.card.dart';
import 'package:provider/provider.dart';

class ArticlesListView extends StatelessWidget {

  const ArticlesListView({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsViewModel>(
      builder: (context, value, child) {
        return Expanded(
            child: ListView.builder(
                itemCount: value.articles.length,
                itemBuilder: (context, index) {
                  final article = value.articles.elementAt(index);
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ArticleCard(
                      article: article,
                    ),
                  );
                }
            )
        );
      },
    );
  }
}