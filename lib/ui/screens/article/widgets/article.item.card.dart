import 'package:flutter/material.dart';
import 'package:news_app/ui/screens/article/widgets/article.content.text.dart';
import 'package:news_app/ui/screens/article/widgets/article.item.title.dart';
import 'package:news_app/ui/screens/article/widgets/article.rounded.image.dart';
import 'package:news_app/ui/screens/shared/large_orange.button.dart';

class ArticleItemCard extends StatelessWidget {
  const ArticleItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    void handleViewNewsInWebSite() {

    }

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
                  child: const Column(
                    children: [
                      ArticleRoundedImage(),
                      ArticleItemTitle(),
                      ArticleContentText()
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
}