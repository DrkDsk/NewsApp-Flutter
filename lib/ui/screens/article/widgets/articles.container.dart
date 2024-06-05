import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/domain/viewmodels/news.viewmodel.dart';
import 'package:news_app/ui/screens/article/widgets/articles.listview.dart';
import 'package:provider/provider.dart';

class ArticlesContainer extends StatefulWidget {

  const ArticlesContainer({
    super.key,
  });

  @override
  State<ArticlesContainer> createState() => _ArticlesContainerState();
}

class _ArticlesContainerState extends State<ArticlesContainer> {

  late NewsViewModel newsViewModel;
  late GoRouter router;

  @override
  void initState(){
    super.initState();
    newsViewModel = Provider.of<NewsViewModel>(context, listen: false);
    newsViewModel.fetchTopHeadlines();
  }

  @override
  Widget build(BuildContext context) {

    return Consumer<NewsViewModel>(
      builder: (
          BuildContext context,
          NewsViewModel newsViewModel,
          Widget? child
          ) {
        return newsViewModel.isLoading ?
        const Expanded(
            child: Center(
              child: CircularProgressIndicator(),
            )
        )
        : const ArticlesListView();
      },
    );
  }
}