import 'package:flutter/material.dart';
import 'package:news_app/ui/screens/article/widgets/articles.listview.dart';
import 'package:news_app/ui/screens/search/search.input.dart';

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
            ArticlesListView()
          ],
        ),
      ),
    );
  }
}
