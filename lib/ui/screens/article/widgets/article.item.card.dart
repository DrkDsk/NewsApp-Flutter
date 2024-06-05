import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/domain/viewmodels/news.viewmodel.dart';
import 'package:news_app/ui/screens/article/widgets/article.content.text.dart';
import 'package:news_app/ui/screens/article/widgets/article.item.title.dart';
import 'package:news_app/ui/screens/article/widgets/article.rounded.image.dart';
import 'package:provider/provider.dart';

class ArticleItemCard extends StatelessWidget {
  const ArticleItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Consumer<NewsViewModel>(
      builder: (context, value, child) {
        return SafeArea(
            child: Center(
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ArticleRoundedImage(imageUrl: value.selectedArticle.urlToImage ?? ""),
                        ArticleItemTitle(title: value.selectedArticle.title ?? ""),
                        ArticleContentText(description: value.selectedArticle.description ?? ""),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "News published at: ${DateFormat("MMM dd, yyyy").format(DateTime.parse(value.selectedArticle.publishedAt ?? ""))}",
                            style: const TextStyle(
                                fontWeight: FontWeight.w700
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
        );
      }
    );
  }
}