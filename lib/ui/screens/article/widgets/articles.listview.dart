import 'package:flutter/material.dart';
import 'package:news_app/domain/viewmodels/news.viewmodel.dart';
import 'package:news_app/ui/screens/article/widgets/articles.container.dart';
import 'package:provider/provider.dart';

class ArticlesListView extends StatefulWidget {
  const ArticlesListView({
    super.key,
  });

  @override
  State<ArticlesListView> createState() => _ArticlesListViewState();
}

class _ArticlesListViewState extends State<ArticlesListView> {

  late NewsViewModel newsViewModel;

  @override
  void initState(){
    super.initState();
    newsViewModel = Provider.of<NewsViewModel>(context, listen: false);
    newsViewModel.fetchTopHeadlines();
  }

  @override
  Widget build(BuildContext context) {

    newsViewModel = Provider.of<NewsViewModel>(context);

    return Consumer<NewsViewModel>(
      builder: (
          BuildContext context,
          NewsViewModel newsViewModel,
          Widget? child
          ) {
        return newsViewModel.isLoading ? const CircularProgressIndicator()
        : ArticlesContainer(newsViewModel: newsViewModel);
      },
    );
  }
}