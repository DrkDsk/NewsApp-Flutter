import 'package:flutter/material.dart';
import 'package:news_app/ui/resources/colors.dart';
import 'package:news_app/ui/screens/article/widgets/article.item.card.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      backgroundColor: primaryColor,
      body: const ArticleItemCard(),
    );
  }
}