import 'package:flutter/material.dart';
import 'package:news_app/domain/viewmodels/news.viewmodel.dart';
import 'package:news_app/ui/resources/colors.dart';
import 'package:news_app/ui/screens/article/widgets/article.item.card.dart';
import 'package:provider/provider.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Consumer<NewsViewModel>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            title: Text(
              value.selectedArticle.title ?? "Title",
              style: const TextStyle(
                  color: darkPrimaryBlueColor,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700
              ),
            ),
          ),
          backgroundColor: primaryColor,
          body: const ArticleItemCard(),
        );
      },
    );
  }
}