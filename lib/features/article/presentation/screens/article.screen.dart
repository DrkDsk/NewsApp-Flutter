import 'package:flutter/material.dart';
import 'package:news_app/features/article/presentation/widgets/article.item.card.dart';
import 'package:news_app/core/constants/colors.dart';

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