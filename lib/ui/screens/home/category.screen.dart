import 'package:flutter/material.dart';
import 'package:news_app/ui/screens/article/widgets/articles.listview.dart';
import 'package:news_app/ui/screens/home/widgets/category.list.dart';
import 'package:news_app/ui/screens/home/widgets/latest_news_title.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const SafeArea(
      child: Column(
        children: [
          SizedBox(height: 20),
          CategoryList(),
          LatestNewTitle(text: "Latest news"),
          ArticlesListView()
        ],
      ),
    );
  }
}
