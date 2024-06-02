import 'package:flutter/cupertino.dart';
import 'package:news_app/data/services/api.service.dart';
import 'package:news_app/domain/models/article.dart';

class NewsViewModel extends ChangeNotifier {
  final ApiService apiService;
  List<Article> articles = [];
  bool isLoading = false;

  NewsViewModel({required this.apiService});

  fetchTopHeadlines() async {
    isLoading = true;

    try {
      articles = await apiService.fetchTopHeadlines();
    } catch (exception) {
      print(exception.toString());
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}