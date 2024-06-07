import 'package:flutter/material.dart';
import 'package:news_app/features/article/presentation/widgets/article.container.dart';
import 'package:news_app/features/search/presentation/widgets/search.input.dart';

class SearchScreen extends StatelessWidget {

  static const String route = "Search";

  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchInput(),
            ArticleContainer()
          ],
        ),
      ),
    );
  }
}
