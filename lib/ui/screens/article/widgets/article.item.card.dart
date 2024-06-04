import 'package:flutter/material.dart';
import 'package:news_app/domain/viewmodels/news.viewmodel.dart';
import 'package:news_app/ui/screens/article/widgets/article.content.text.dart';
import 'package:news_app/ui/screens/article/widgets/article.item.title.dart';
import 'package:news_app/ui/screens/article/widgets/article.rounded.image.dart';
import 'package:news_app/ui/screens/shared/large_orange.button.dart';
import 'package:provider/provider.dart';

class ArticleItemCard extends StatelessWidget {
  const ArticleItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    void handleViewNewsInWebSite() {

    }

    return Consumer<NewsViewModel>(
      builder: (context, value, child) {
        return SafeArea(
            child: Center(
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.90,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: const Offset(0,3)
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            ArticleRoundedImage(imageUrl: value.selectedArticle.urlToImage ?? ""),
                            ArticleItemTitle(title: value.selectedArticle.title ?? ""),
                            ArticleContentText(description: value.selectedArticle.description ?? "")
                          ],
                        ),
                      ),
                    ),
                  ),
                  LargeOrangeButton(
                      onTap: handleViewNewsInWebSite,
                      buttonTitle: 'Ver detalles'
                  )
                ],
              ),
            )
        );
      }
    );
  }
}