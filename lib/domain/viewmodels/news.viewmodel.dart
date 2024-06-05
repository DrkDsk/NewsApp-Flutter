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

    try {
      articles = await apiService.fetchTopHeadlines();
    } catch (exception) {
      showErrorDialog(context: context, message: exception.toString());
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  fetchCategoryNews() async {
    isLoading = true;
    notifyListeners();

    try {
      articles = await apiService.fetchCategory(category: selectedCategory.toLowerCase());
    } catch (exception) {
      print("exception");
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  fetchNewsBySearchField() async {
    isLoading = true;
    notifyListeners();

    try {
      articles = await apiService.fetchNewsBySearchField(search: textSearchController.text.toLowerCase());
    } catch (exception) {
      print(exception.toString());
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  void showErrorDialog({
    required BuildContext context,
    required String message
  }) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("An error occcurred!"),
            content: Text(message),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("OK")
              )
            ],
          );
        },
    );
  }
}