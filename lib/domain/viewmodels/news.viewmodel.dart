import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/data/services/api.service.dart';
import 'package:news_app/domain/models/article.dart';

class NewsViewModel extends ChangeNotifier {

  TextEditingController textSearchController = TextEditingController();
  late Article selectedArticle;
  final ApiService apiService;
  List<Article> articles = [];
  String selectedCategory = "";
  String headerListNewsTitle = "Latest news";
  bool isLoading = true;

  NewsViewModel({required this.apiService});

  setSelectedArticle(Article article) {
    selectedArticle = article;
    notifyListeners();
  }

  setSelectedCategory(String title) {
    selectedCategory = title;
    notifyListeners();
  }

  setHeaderListNewsTitle(String title) {
    headerListNewsTitle = title;
    notifyListeners();
  }

  setTextSearchController(TextEditingController textEditingController) {
    textSearchController = textEditingController;
    notifyListeners();
  }

  clearArticles() {
    articles = [];
    notifyListeners();
  }

  clearTextSearchController() {
    textSearchController.clear();
    notifyListeners();
  }

  markAsLoading() {
    isLoading = true;
    notifyListeners();
  }

  fetchTopHeadlines({
    required BuildContext context
  }) async {

    if (!context.mounted) return;

    articles = await apiService.fetchTopHeadlines(context: context);
    isLoading = false;
    notifyListeners();
  }

  fetchCategoryNews({required BuildContext context}) async {
    isLoading = true;
    notifyListeners();

    articles = await apiService.fetchCategory(category: selectedCategory.toLowerCase(), context: context);
    isLoading = false;
    notifyListeners();
  }

  fetchNewsBySearchField({required BuildContext context}) async {
    isLoading = true;
    notifyListeners();

    articles = await apiService.fetchNewsBySearchField(search: textSearchController.text.toLowerCase(), context: context);
    isLoading = false;
    notifyListeners();
  }
}