import 'package:flutter/material.dart';
import 'package:news_app/features/article/presentation/providers/news.viewmodel.dart';
import 'package:news_app/features/article/presentation/widgets/article.listview.dart';
import 'package:provider/provider.dart';

class ArticleContainer extends StatefulWidget {

  const ArticleContainer({
    super.key,
  });

  @override
  State<ArticleContainer> createState() => _ArticleContainerState();
}

class _ArticleContainerState extends State<ArticleContainer> {

  late NewsViewModel newsViewModel;

  @override
  void initState(){
    super.initState();
    newsViewModel = Provider.of<NewsViewModel>(context, listen: false);
    newsViewModel.fetchTopHeadlines(context: context);
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
        : const ArticleListView();
      },
    );
  }
}