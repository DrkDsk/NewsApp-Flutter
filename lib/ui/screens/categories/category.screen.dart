import 'dart:async';
import 'package:flutter/material.dart';
import 'package:news_app/domain/models/category.dart';
import 'package:news_app/domain/viewmodels/news.viewmodel.dart';
import 'package:news_app/ui/screens/home/widgets/category.card.dart';
import 'package:news_app/ui/screens/shared/LargeOrangeButton.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatefulWidget {

  static const String route = "categories";
  const CategoryScreen({
    super.key,
  });

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  final ScrollController _scrollController = ScrollController();
  late NewsViewModel newsViewModel;
  Timer? _debounce;

  @override
  void initState(){
    newsViewModel = Provider.of<NewsViewModel>(context, listen: false);
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    newsViewModel.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onScroll() {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    if (_scrollController.position.isScrollingNotifier.value) {
      _debounce = Timer(const Duration(milliseconds: 200), () {
        int currentSelectedIndex = _getCenteredIndex();
        Category categorySelected = categoryItems.elementAt(currentSelectedIndex);
        String categoryTitle = categorySelected.title;
        //newsViewModel.fetchCategoryNews(categoryTitle);
      });
    }
  }

  int _getCenteredIndex() {
    double scrollOffset = _scrollController.offset;
    double itemWidth = MediaQuery.of(context).size.width * 0.80;
    int centeredIndex = (scrollOffset / itemWidth).round();
    return centeredIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
            height: 500,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              itemCount: categoryItems.length,
              itemBuilder: (BuildContext context, index)  {
                Category item = categoryItems.elementAt(index);
                return CategoryCard(imageAsset: item.imageAsset, title: item.title);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 10,
                );
              },
            ),
          ),
          const LargeOrangeButton(buttonTitle: "Seleccionar")
        ],
      ),
    );
  }
}