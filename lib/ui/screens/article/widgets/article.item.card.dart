import 'package:flutter/material.dart';
import 'package:news_app/ui/screens/article/widgets/article.content.text.dart';
import 'package:news_app/ui/screens/article/widgets/article.item.title.dart';
import 'package:news_app/ui/screens/article/widgets/article.rounded.image.dart';

class ArticleItemCard extends StatelessWidget {
  const ArticleItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: GestureDetector(
                onTap: () {
                  print("clicked");
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(
                      child: Text(
                        "Ver detalles",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Poppins'
                        ),
                      )
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}