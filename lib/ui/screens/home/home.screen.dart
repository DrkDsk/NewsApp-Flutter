import 'package:flutter/material.dart';
import 'package:news_app/domain/viewmodels/news.viewmodel.dart';
import 'package:news_app/ui/screens/home/widgets/articles.list.dart';
import 'package:news_app/ui/screens/home/widgets/category.list.dart';
import 'package:news_app/ui/screens/home/widgets/latest_news_title.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {


  @override
  void initState() {
    super.initState();
    final newsViewModel = Provider.of<NewsViewModel>(context, listen: false);
    newsViewModel.fetchTopHeadlines();
  }

  @override
  Widget build(BuildContext context) {

    final newsViewModel = Provider.of<NewsViewModel>(context);

    return SafeArea(
      child: newsViewModel.isLoading ?
      const CircularProgressIndicator() :
      const Column(
        children: [
          SizedBox(height: 20),
          CategoryList(),
          LatestNewTitle(text: "Latest news"),
          ArticlesList()
        ],
      ),
    );
  }
}
